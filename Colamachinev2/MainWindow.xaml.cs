using Colamachinev2.model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
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

namespace Colamachinev2
{

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window, INotifyPropertyChanged
    {
        public bool sbtbl { get; set; }
        public double sizem { get; set; }
        public string Ename;
        public string ename { get =>Ename; set { Ename = value; OnPropertyChanged(); }  }
        public string Eprice;
        public string eprice { get => Eprice; set { Eprice = value; OnPropertyChanged(); } }
        public int Ecount;
        public int ecount { get => Ecount; set { Ecount = value; OnPropertyChanged(); } }
        public ObservableCollection<item> items { get; set; } = new ObservableCollection<item>()
        {
            new item() { Name = "Cola", price =1.00,count=100},
            new item() { Name = "Fanta", price =1.00,count=100},
            new item() { Name = "Pepsi", price =1.00,count=100},
            new item() { Name = "Icetea", price =1.00,count=100},
            new item() { Name = "Snickers", price =1.00,count=100},
            new item() { Name = "Mars", price =1.00,count=100},
            new item() { Name = "Bounty", price =1.00,count=100}
        };
        public MainWindow()
        {
            InitializeComponent();
            DataContext = this;
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string name = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
        }
        private void btn_sebet_Click(object sender, RoutedEventArgs e)
        {
            if (sbtbl == false)
            {
                sbtbl = true;                
                menu.Width = new GridLength(50);
            }
            else
            {
                sbtbl = false;
                menu.Width = new GridLength(350);
            }
        }

        private void lstBoxitemname_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            icon.Kind = MaterialDesignThemes.Wpf.PackIconKind.Pencil;
            ename = (lstBox.SelectedItem as item).Name;
            eprice=(lstBox.SelectedItem as item).price.ToString();
            ecount=(lstBox.SelectedItem as item).count;  
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (tb_Seach.Text != "")
            {
                foreach (var item in lstBox.Items)
                {
                    if((item as item).Name.ToLower().Contains(tb_Seach.Text.ToLower()))
                    {
                        lstBox.SelectedItem = item;
                    }
                }
            }
        }

        private void sv_ed_Click(object sender, RoutedEventArgs e)
        {
            if (lstBox.SelectedItem == null)
            {                
                items.Add(new item { Name =ename, price = double.Parse(eprice), count = ecount});
                ename = "";
                eprice = "0";
                ecount = 0;
            }
            else
            {                
                int i=lstBox.SelectedIndex;
                items.RemoveAt(i);
                items.Insert(i, new item { Name =ename,price = double.Parse(eprice), count = ecount});
                ename = "";
                eprice = "0";
                ecount = 0;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            lstBox.UnselectAll();
            icon.Kind = MaterialDesignThemes.Wpf.PackIconKind.HamburgerPlus;
            ename = "";
            ecount= 0;
            eprice = "0";

        }
        public double balans=0;
        public double yekun=0;
        public double qaliq=0;

        public double Balans { get => balans; set { balans = value; OnPropertyChanged(); } }
        public double Yekun { get=>yekun; set { yekun += value; OnPropertyChanged();} }
        public double Qaliq { get => qaliq; set { qaliq = value; OnPropertyChanged(); } }
        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (lstBox.SelectedItem != null)
            {
                Yekun = (lstBox.SelectedItem as item).price;
                int i = lstBox.SelectedIndex;
                int count = (lstBox.SelectedItem as item).count;
                double prc = (lstBox.SelectedItem as item).price;
                string nm = (lstBox.SelectedItem as item).Name;
                items.RemoveAt(i);
                items.Insert(i, new item { Name = nm, price = prc, count = count - 1 });
            }
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            Balans = double.Parse(medax.Text);
            Qaliq = balans - yekun;
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            Balans = 0;
            Qaliq= 0;
            Yekun= 0;
            lstBox.UnselectAll();
            ecount = 0;
            ename = "";
            eprice= "0";
        }
    }
}
