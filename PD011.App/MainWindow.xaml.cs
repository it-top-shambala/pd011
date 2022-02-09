using System.Windows;
using System.Windows.Input;

namespace PD011.App
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void ListViewItem_MouseEnter(object sender, MouseEventArgs e)
        {
            // Set tooltip visibility

            if (ToggleButton_Menu.IsChecked == true)
            {
                ToolTip_Menu.Visibility = Visibility.Collapsed;
                ToolTip_Shop.Visibility = Visibility.Collapsed;
                ToolTip_Setting.Visibility = Visibility.Collapsed;
                ToolTip_Exit.Visibility = Visibility.Collapsed;
            }
            else
            {
                ToolTip_Menu.Visibility = Visibility.Visible;
                ToolTip_Shop.Visibility = Visibility.Visible;
                ToolTip_Setting.Visibility = Visibility.Visible;
                ToolTip_Exit.Visibility = Visibility.Visible;
            }
        }

        private void Button_Close_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
    }
}
