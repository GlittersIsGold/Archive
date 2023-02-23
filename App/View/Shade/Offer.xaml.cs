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
	/// Логика взаимодействия для Offer.xaml
	/// </summary>
	public partial class Offer : Page
	{
		public Offer()
		{
			InitializeComponent();

			var Offers = ClassDataRequest.ArchiveEntities.ClientOfferrings.ToList();

			if (Offers != null)
			{
				DgOffers.ItemsSource= Offers;

				RunFoundDocsCount.Text = Offers.Count.ToString();	
				RunTotalDocsCount.Text = Offers.Count.ToString();	
			}
			else
			{
				WindowException exception = new WindowException();
				exception.TbExHeader.Text = "Ошибка при входе";
				exception.RunExHeader.Text = "Введены неверные данные";
				exception.RunExBody.Text = "Проверьте правильность данных";
				exception.RunExFooter.Text = "Обратитесь в службу поддержки";
				exception.Show();
			}
		}

		private void BtnDocument_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Document());
        }

		private void BtnClient_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Clients());
		}

		private void BtnOffer_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Offer());
		}

		private void BtnArchive_Click(object sender, RoutedEventArgs e)
		{
			ClassNavigation.Navigator.Navigate(new Archive());
		}
	}
}
