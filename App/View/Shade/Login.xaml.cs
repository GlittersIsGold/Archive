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
	/// Логика взаимодействия для Login.xaml
	/// </summary>
	public partial class Login : Page
	{
		public Login()
		{
			InitializeComponent();
			TbLogin.Text = "1";
			PbLogin.Password = "1";
		}

		private void BtnLogin_Click(object sender, RoutedEventArgs e)
		{
			if (PbLogin.Password == "1" && TbLogin.Text == "1")
			{
				ClassNavigation.Navigator.Navigate(new Archive());
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
	}
}
