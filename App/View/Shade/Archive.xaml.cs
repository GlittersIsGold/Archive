using Archive.Controller;
using Archive.Model;
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
	/// Логика взаимодействия для Archive.xaml
	/// </summary>
	public partial class Archive : Page
	{
		private int FiltersUsed = 0;
		

		public Archive()
		{
			InitializeComponent();

			var ArchiveData = ClassDataRequest.ArchiveEntities.Archive.ToList();

			if (ArchiveData != null)
			{
				DgArchive.ItemsSource = ArchiveData;

				RunFoundDocsCount.Text = ArchiveData.Count.ToString();
				RunTotalDocsCount.Text = ArchiveData.Count.ToString();
			}
			else
			{
				WindowException exception = new WindowException();
				exception.TbExHeader.Text = "Ошибка";
				exception.RunExHeader.Text = "При полученнии данных";
				exception.RunExBody.Text = "не удалось обработать запрос";
				exception.RunExFooter.Text = "Обратитесь в службу поддержки";
				exception.Show();
			}
			
			RunTotalFiltersCount.Text = FiltersUsed.ToString();
		}

		private void BtnDocument_Click(object sender, RoutedEventArgs e)
		{

		}

		private void BtnClient_Click(object sender, RoutedEventArgs e)
		{

		}

		private void BtnOffer_Click(object sender, RoutedEventArgs e)
		{

		}

		private void BtnArchive_Click(object sender, RoutedEventArgs e)
		{

		}

		private void BtShowFullSectors_Click(object sender, RoutedEventArgs e)
		{
			var FullfilledSectors = ClassDataRequest.ArchiveEntities.Archive.OrderByDescending(f => f.PiecesInSector).ToList();

			if (FullfilledSectors != null)
			{
				DgArchive.ItemsSource = FullfilledSectors;
			}
			else
			{
				MessageBox.Show("Не найдено пустых ячеек на полках архива", Name);
			}

			RunFoundDocsCount.Text = FullfilledSectors.Count().ToString();

			FiltersUsed++;
			
			RunTotalFiltersCount.Text = FiltersUsed.ToString();
		}

		private void BtShowNullSectors_Click(object sender, RoutedEventArgs e)
		{

			var NullSectors = ClassDataRequest.ArchiveEntities.Archive.ToList().Where(x => x.IsFilled == false);

			if (NullSectors != null)
			{
				DgArchive.ItemsSource = NullSectors;
			}
			else
			{
				MessageBox.Show("Не найдено пустых ячеек на полках архива", Name);
			}

			RunFoundDocsCount.Text = NullSectors.Count().ToString();
			
			FiltersUsed++;

			RunTotalFiltersCount.Text = FiltersUsed.ToString();
		}

		private void BtResetFilters_Click(object sender, RoutedEventArgs e)
		{
			var ArchiveData = ClassDataRequest.ArchiveEntities.Archive.ToList();

			if (ArchiveData != null)
			{
				DgArchive.ItemsSource = ArchiveData;

				RunFoundDocsCount.Text = ArchiveData.Count.ToString();
				RunTotalDocsCount.Text = ArchiveData.Count.ToString();
			}
			else
			{
				WindowException exception = new WindowException();
				exception.TbExHeader.Text = "Ошибка";
				exception.RunExHeader.Text = "При полученнии данных";
				exception.RunExBody.Text = "не удалось обработать запрос";
				exception.RunExFooter.Text = "Обратитесь в службу поддержки";
				exception.Show();
			}

			FiltersUsed = 0;

			RunTotalFiltersCount.Text = FiltersUsed.ToString();
		}
	}
}
