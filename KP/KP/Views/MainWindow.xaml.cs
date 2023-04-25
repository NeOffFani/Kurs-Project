using KP.Model;
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


namespace KP.Views
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            MyFrame.Navigate(new Stanki());
            Manager.MyFrame = MyFrame;

        }

        private void Repair_Click(object sender, RoutedEventArgs e)
        {
            MyFrame.Navigate(new RepairPage());
        }

        private void Test_Click(object sender, RoutedEventArgs e)
        {
            MyFrame.Navigate(new TestPage());
        }


        private void Machine_Click(object sender, RoutedEventArgs e)
        {
            MyFrame.Navigate(new Stanki());
        }

    }
}
