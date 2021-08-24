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
using System.IO;

namespace AddBook_WPF
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

        private void btnAddContact_Click(object sender, RoutedEventArgs e)
        {
            if(String.IsNullOrWhiteSpace(txtname.Text) || String.IsNullOrWhiteSpace(txtPhone.Text))
            {
                MessageBox.Show("Name and/or Phone field cannot be empty.","WARNING!",MessageBoxButton.OK,MessageBoxImage.Error);
                return;
            }
            
            string file = "MyBook.txt";
            string[] entry = { "Name: ", "Phone#: ", "Home Address: ", "Organization: ", "Notes: " };
            entry[0] = entry[0] + txtname.Text;
            entry[1] = entry[1] + txtPhone.Text;
            entry[2] = entry[2] + txtAddress.Text;
            entry[3] = entry[3] + txtOrg.Text;
            entry[4] = entry[4] + txtNotes.Text;

            if (MessageBox.Show($"Do you wish to add this contact? \n\t{entry[0]}\n\t{entry[1]}\n\t{entry[2]}\n\t{entry[3]}\n\t{entry[4]} ", "Attention",
               MessageBoxButton.YesNo, MessageBoxImage.None) == MessageBoxResult.Yes)
            {
                File.AppendAllLines(file, entry);
            }
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            string[] MyBook = File.ReadAllLines("MyBook.txt");
            int entries = MyBook.Length / 5;
            string target = txtSearch.Text;
            int currentline = -1;

            for (int i = 0; i < MyBook.Length; i++)
                if (MyBook[i].Contains(target))
                {
                    currentline = i;
                    break;
                }

            if (currentline != -1)
            {
                Console.WriteLine("ID: " + (currentline / 5 + 1));
                currentline = currentline / 5 * 5;
                string[] TargetEntry = new string[5];
                int j = 0;
                for (int i = currentline; i < currentline + 5; i++)
                {
                    TargetEntry[j] = (MyBook[i]);
                    j++;
                }

                if (MessageBox.Show($"Entry Found\n{TargetEntry[0]}\n\t{TargetEntry[1]}\n\t{TargetEntry[2]}\n\t{TargetEntry[3]}\n\t{TargetEntry[4]}\n\n Would you like to delete this entry?"
                    , "Entry Found", MessageBoxButton.YesNo) == MessageBoxResult.Yes)

                    if (MessageBox.Show("Are you sure you wish to delete this entry?", "Confirm Delete", MessageBoxButton.YesNo) == MessageBoxResult.Yes)
                        RemoveEntry(MyBook, currentline);
            }
            else
                MessageBox.Show("There is no entry with entered content.");
        }

        static void RemoveEntry(string[] MyBook, int index)
        {
            string[] MyNewBook = new string[MyBook.Length - 5];
            int lines = 0;
            //MyBook = MyBook.Where((source, index) => index > indextoremove && index < indextoremove + 5).ToArray();
            for (int i = 0; i < MyBook.Length; i++)
            {
                if (i >= index + 5 || i < index)
                //MyNewBook.Append(MyBook[i]);
                {
                    MyNewBook[lines] = MyBook[i];
                    lines++;
                }


            }
            File.WriteAllLines("MyBook.txt", MyNewBook);
            return;

        }
    }
}





