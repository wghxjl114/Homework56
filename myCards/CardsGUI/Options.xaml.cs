﻿using Ch13CardLib;
using System.IO;
using System.Windows;
using System.Xml.Serialization;

namespace CardsGUI
{
  /// <summary>
  /// Interaction logic for Options.xaml
  /// </summary>
  public partial class Options : Window
  {
    private GameOptions _gameOptions;

    public Options()
    {
      _gameOptions = GameOptions.Create();
      DataContext = _gameOptions;

      InitializeComponent();
    }

    private void dumbAIRadioButton_Checked(object sender, RoutedEventArgs e)
    {
      _gameOptions.ComputerSkill = ComputerSkillLevel.Dumb;
    }

    private void goodAIRadioButton_Checked(object sender, RoutedEventArgs e)
    {
      _gameOptions.ComputerSkill = ComputerSkillLevel.Good;
    }

    private void cheatingAIRadioButton_Checked(object sender, RoutedEventArgs e)
    {
      _gameOptions.ComputerSkill = ComputerSkillLevel.Cheats;
    }

    private void okButton_Click(object sender, RoutedEventArgs e)
    {
      this.DialogResult = true;
      _gameOptions.Save();
      this.Close();
    }

    private void cancelButton_Click(object sender, RoutedEventArgs e)
    {
      _gameOptions = null;
      Close();
    }
  }
}
