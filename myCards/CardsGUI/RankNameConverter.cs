using System;
using System.Windows;
using System.Windows.Data;

namespace CardsGUI
{
  [ValueConversion(typeof(Ch13CardLib.Rank), typeof(string))]
  public class RankNameConverter : IValueConverter
  {
    public object Convert(object value, Type targetType,
object parameter, System.Globalization.CultureInfo culture)
    {
      int source = (int)value;
      if (source == 1 || source > 10)
      {
        switch (source)
        {
          case 1:
            return "A";
          case 11:
            return "J";
          case 12:
            return "Q";
          case 13:
            return "K";
          default:
            return DependencyProperty.UnsetValue;
        }
      }
      else
        return source.ToString();
    }
    public object ConvertBack(object value, Type targetType,
object parameter, System.Globalization.CultureInfo culture)
    {
      return DependencyProperty.UnsetValue;
    }
  }

}
