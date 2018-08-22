using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CardsGUI
{
    /// <summary>
    /// CardControl.xaml 的交互逻辑
    /// </summary>
    public partial class CardControl : UserControl
    {
        public static DependencyProperty SuitProperty = DependencyProperty.Register("Suit", typeof(CH11.Suit), typeof(CardControl), new PropertyMetadata(CH11.Suit.Club, new PropertyChangedCallback(OnSuitChanged)));
        public static DependencyProperty RankProperty = DependencyProperty.Register("Rank", typeof(CH11.Rank), typeof(CardControl), new PropertyMetadata(CH11.Rank.Ace));
        public static DependencyProperty IsFaceUpProperty= DependencyProperty.Register("IsFaceUp", typeof(bool), typeof(CardControl), new PropertyMetadata(true, new PropertyChangedCallback(OnIsFaceUpChanged)));
        private CH11.Card _card;
        public CH11.Card Card
        {
            get { return _card; }
            private set { _card = value;Suit = _card.suit;Rank = _card.rank; }
        }
        public bool IsFaceUp
        {
            get { return (bool)GetValue(IsFaceUpProperty); }
            set { SetValue(IsFaceUpProperty, value); }
        }
        public CH11.Suit Suit
        {
            get { return (CH11.Suit)GetValue(SuitProperty); }
            set { SetValue(SuitProperty, value); }
        }
        public CH11.Rank Rank
        {
            get { return (CH11.Rank)GetValue(RankProperty); }
            set { SetValue(RankProperty, value); }
        }
        public CardControl()
        {
            InitializeComponent();
        }
        public CardControl(CH11.Card card)
        {
            InitializeComponent();
            Card = card;
        }
        public static void OnIsFaceUpChanged(DependencyObject source,DependencyPropertyChangedEventArgs args)
        {
            var control = source as CardControl;
            control.RankLabel.Visibility = control.SuitLabel.Visibility = control.RankLabelInverted.Visibility = control.TopRightImage.Visibility
                = control.BottomLeftImage.Visibility = control.IsFaceUp ? Visibility.Visible : Visibility.Hidden;
        }
        public static void OnSuitChanged(DependencyObject source, DependencyPropertyChangedEventArgs args)
        {
            var control = source as CardControl;
            control.SetTextColor();
        }
        private void SetTextColor()
        {
            var color = (Suit == CH11.Suit.Club || Suit == CH11.Suit.Spade) ? new SolidColorBrush(Color.FromRgb(0, 0, 0)) : new SolidColorBrush(Color.FromRgb(255, 0, 0));
            RankLabel.Foreground = SuitLabel.Foreground = RankLabelInverted.Foreground = color;
        }
    }
}
