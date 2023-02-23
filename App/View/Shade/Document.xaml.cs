using Archive.Controller;
using Archive.View.Pane;
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

namespace Archive.View.Shade
{
	/// <summary>
	/// Логика взаимодействия для Document.xaml
	/// </summary>
	public partial class Document : Page
	{
		public Document()
		{
			InitializeComponent();

			var Documents = ClassDataRequest.ArchiveEntities.Document.ToList();

			if (Documents != null)
			{
				DgArchive.ItemsSource = Documents;

				RunFoundDocsCount.Text = Documents.Count.ToString();
				RunTotalDocsCount.Text = Documents.Count.ToString();
			}
			else
			{
				WindowException window = new WindowException();
				window.TbExHeader.Text = "Ошибка";
				window.RunExHeader.Text = "При полученнии данных";
				window.RunExBody.Text = "не удалось обработать запрос";
				window.RunExFooter.Text = "Обратитесь в службу поддержки";
				window.Show();
			}
		}

		private void BtnArchive_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Archive());
		}

		private void BtnOffer_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Offer());
		}

		private void BtnClient_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Clients());
		}

		private void BtnDocument_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Document());
		}
	}
}
