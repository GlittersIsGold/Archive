   M S B A M L   `   `   `  ????B  >Archive, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Archive.View.ShadeArchive.View.Shade  5           Archive.View.Shade.Clients   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Archive.View.Shade     5        N? Title$  Clients??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??4* ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??8* ?6   ?? 5      $??* ?6   .+?5   
   ?? $??0??6   $??1??6%   .+?5      ?? -   5        $??BtnDocument??5      $??Документы??5      6%   ?? 5      -   5        $??	BtnClient??5      $??Клиенты??5      6#   ?? 5!      -   5        $??BtnOffer??5"      $??
Заказ??5#      6!   ?? 5%      -   5        $??
BtnArchive??5&      $??
Архив??5'      6!   5)      ?? 5+   
   $??1??6   $??0??6%   $??Center=?62   $??Center=?6M   .+?5,      ?? $??Клиенты??6   5-      ?? 5/   
   $??1??6   $??1??6%   .+?50      &   System.Windows.Controls.DataGrid  -   5        $??	DgClients??51         
IsReadOnly .    AutoGenerateColumns .  
??????    Columns 56      0  *System.Windows.Controls.DataGridTextColumn  57      ,  &System.Windows.Controls.DataGridColumn   Header$
 Ид??58         Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.5* 5:      1  +System.Windows.Controls.DataGridBoundColumn   Binding 59      ?? *Id+5:        5;      $ Имя??5<      $ * 5>       5=      ?? *Name+5>        5?      $ Фамилия??5@      $ * 5B       5A      ?? *
SecondName+5B        5C      $ Отчество??5D      $ * 5F       5E      ?? *	ThirdName+5F        5G      $ Телефон??5H      $ 2* 5J       5I      ?? *PhoneNumber+5J      5L      5M      ?? 5O   
   $??2??6   $??1??6%   .+?5P      ?? $??Сортировка:??6   ?? 5Q      -   5        $??BtShowNullSectors??5R      $??Пустые??5S      ?? 5U      -   5        $??BtShowFullSectors??5V      $??Заполненные??5W      5Y      ?? 5[   
   $??2??6   $??1??6"   	 ?? Orientation$	 
Horizontal=?62   $??Center=?6K   $??Center=?6h   .+?5\      ?? ?? 5]      -   5        
 ?Name$
 RunFound??5]   /   $&? Найдено клиентов:??6   6/    ?? 5^      -	   5        $
 RunFoundCount??5^      $? ??6   6   5_      ?? 5`      ?? 5a      -
   5        $
 RunTotal??5a   -   $"?Всего клиентов:??6   6-    ?? 5b      -   5        $
 RunTotalCount??5b      $? ??6   6   5c      5d      5e      5f      