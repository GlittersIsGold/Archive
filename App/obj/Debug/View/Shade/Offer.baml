   M S B A M L   `   `   `  ????B  >Archive, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Archive.View.ShadeArchive.View.Shade  5          Archive.View.Shade.Offer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Archive.View.Shade     5        N? Title$  
Заказ??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??4* ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??8* ?6   ?? 5      $??* ?6   .+?5   
   ?? $??0??6   $??1??6%   .+?5      ?? -   5        $??BtnDocument??5      $??Документы??5      6%   ?? 5      -   5        $??	BtnClient??5      $??Клиенты??5      6#   ?? 5!      -   5        $??BtnOffer??5"      $??
Заказ??5#      6!   ?? 5%      -   5        $??
BtnArchive??5&      $??
Архив??5'      6!   5)      ?? 5+   
   $??1??6   $??0??6%   $??Center=?62   $??Center=?6M   .+?5,      ?? $??Заказы??6   5-      ?? 5/   
   $??1??6   $??1??6%   .+?50      &   System.Windows.Controls.DataGrid  -   5        $??DgOffers??51         
IsReadOnly .    AutoGenerateColumns .  
??????    Columns 56      0  *System.Windows.Controls.DataGridTextColumn  57      ,  &System.Windows.Controls.DataGridColumn   Header$
 Ид??58         Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.5* 5:      1  +System.Windows.Controls.DataGridBoundColumn   Binding 59      ?? *Id+5:        5;      $ Документ??5<      $ * 5>       5=      ?? *Document.Name+5>        5?      $ Клиент??5@      $ * 5B       5A      ?? *Client.Name+5B        5C      $ 
Выдан??5D      $ * 5F       5E      ?? *	DateGiven+5F        5G      $ Возврат??5H      $ * 5J       5I      ?? *
DateReturn+5J        5K      $ Просрочен??5L      $ * 5N       5M      ?? *	IsOverdue+5N      5P      5Q      ?? 5S   
   $??2??6   $??1??6%   .+?5T      ?? $??Сортировка:??6   ?? 5U      -   5        $??BtShowNullSectors??5V      $??Популярные??5W      ?? 5Y      -   5        $??BtShowFullSectors??5Z      $??Последние??5[      ?? 5]      -   5        $??
BtShowRare??5^      $??Редкие??5_      5a      ?? 5c   
   $??2??6   $??1??6"   	 ?? Orientation$	 
Horizontal=?62   $??Center=?6K   $??Center=?6h   .+?5d      ?? ?? 5e      -	   5        
 ?Name$
 RunFoundDocs??5e   .   $$?Найдено заказов:??6   6.    ?? 5f      -
   5        $
 RunFoundDocsCount??5f      $? ??6   6   5g      ?? 5h      ?? 5i      -   5        $
 RunTotalDocs??5i   ,   $ ?Всего заказов:??6   6,    ?? 5j      -   5        $
 RunTotalDocsCount??5j      $? ??6   6   5k      5l      5m      5n      