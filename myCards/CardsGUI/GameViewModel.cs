﻿using Ch13CardLib;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows.Input;

namespace CardsGUI
{
  public class GameViewModel : INotifyPropertyChanged
  {
    public event PropertyChangedEventHandler PropertyChanged;
    public GameViewModel()
    {
      _players = new List<Player>();
      _gameOptions = GameOptions.Create();
    }

    private void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

    private Player _currentPlayer;
    private GameOptions _gameOptions;
    public Player CurrentPlayer
    {
      get { return _currentPlayer; }
      set
      {
        _currentPlayer = value;
        OnPropertyChanged(nameof(CurrentPlayer));
      }
    }

    private List<Player> _players;
    public List<Player> Players
    {
      get { return _players; }
      set
      {
        _players = value;
        OnPropertyChanged(nameof(Players));
      }
    }

    private Card _availableCard;
    public Card CurrentAvailableCard
    {
      get { return _availableCard; }
      set
      {
        _availableCard = value;
        OnPropertyChanged(nameof(CurrentAvailableCard));
      }
    }

    private Deck _deck;
    public Deck GameDeck
    {
      get { return _deck; }
      set
      {
        _deck = value;
        OnPropertyChanged(nameof(GameDeck));
      }
    }

    private bool _gameStarted;
    public bool GameStarted
    {
      get { return _gameStarted; }
      set
      {
        _gameStarted = value;
        OnPropertyChanged(nameof(GameStarted));
      }
    }

    public static RoutedCommand StartGameCommand = new RoutedCommand("Start New Game", typeof(GameViewModel), new InputGestureCollection(new List<InputGesture>{ new KeyGesture(Key.N, ModifierKeys.Control) }));
    public static RoutedCommand ShowAboutCommand = new RoutedCommand("Show About Dialog", typeof(GameViewModel));

    public void StartNewGame()
    {
      if (_gameOptions.SelectedPlayers.Count < 1 || (_gameOptions.SelectedPlayers.Count == 1 && !_gameOptions.PlayAgainstComputer))
        return;
      CreateGameDeck();
      CreatePlayers();
      InitializeGame();
      GameStarted = true;
    }
    private void InitializeGame()
    {
      AssignCurrentPlayer(0);
      CurrentAvailableCard = GameDeck.Draw();
    }
    private void AssignCurrentPlayer(int index)
    {
      CurrentPlayer = Players[index];
      if (!Players.Any(x => x.State == PlayerState.Winner))
        Players.ForEach(x => x.State = (x == Players[index] ? PlayerState.Active :
PlayerState.Inactive));
    }
    private void InitializePlayer(Player player)
    {
      player.DrawNewHand(GameDeck);
      player.OnCardDiscarded += player_OnCardDiscarded;
      player.OnPlayerHasWon += player_OnPlayerHasWon;
      Players.Add(player);
    }
    private void CreateGameDeck()
    {
      GameDeck = new Deck();
      GameDeck.Shuffle();
    }
    private void CreatePlayers()
    {
      Players.Clear();
      for (var i = 0; i < _gameOptions.NumberOfPlayers; i++)
      {
        if (i < _gameOptions.SelectedPlayers.Count)
          InitializePlayer(new Player
          {
            Index = i,
            PlayerName =
_gameOptions.SelectedPlayers[i]
          });
        else
          InitializePlayer(new ComputerPlayer
          {
            Index = i,
            Skill =
_gameOptions.ComputerSkill
          });
      }
    }

    void player_OnPlayerHasWon(object sender, PlayerEventArgs e)
    {
      Players.ForEach(x => x.State = (x == e.Player ? PlayerState.Winner :
                                      PlayerState.Loser));
    }
    void player_OnCardDiscarded(object sender, CardEventArgs e)
    {
      CurrentAvailableCard = e.Card;
      var nextIndex = CurrentPlayer.Index + 1 >= _gameOptions.NumberOfPlayers ? 0 :
                                      CurrentPlayer.Index + 1;
      if (GameDeck.CardsInDeck == 0)
      {
        var cardsInPlay = new List<Card>();
        foreach (var player in Players)
          cardsInPlay.AddRange(player.GetCards());
        cardsInPlay.Add(CurrentAvailableCard);
        GameDeck.ReshuffleDiscarded(cardsInPlay);
      }
      AssignCurrentPlayer(nextIndex);
    }


  }
}
