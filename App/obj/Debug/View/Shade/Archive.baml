   M S B A M L   `   `   `  ????B  >Archive, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:Archive.View.ShadeArchive.View.Shade  5           Archive.View.Shade.Archive   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      2local clr-namespace:Archive.View.Shade     5        N? Title$  
Архив??5	      .??5      ?  ? ColumnDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??4* ?6   ?? 5      $??* ?6    ? RowDefinitions 5   
   ?? 5      $??* ?6   ?? 5      $??8* ?6   ?? 5      $??* ?6   .+?5   
   ?? $??0??6   $??1??6%   .+?5      ?? -   5        $??BtnDocument??5      $??Документы??5      5      ?? 5      -   5        $??	BtnClient??5      $??Клиенты??5       5!      ?? 5#      -   5        $??BtnOffer??5$      $??
Заказ??5%      5&      ?? 5(      -   5        $??
BtnArchive??5)      $??
Архив??5*      5+      5-      ?? 5/   
   $??1??6   $??0??6%   $??Center=?62   $??Center=?6M   .+?50      ?? $%??Архив документов??6   51      ?? 53   
   $??1??6   $??1??6%   .+?54      &   System.Windows.Controls.DataGrid  -   5        $??	DgArchive??55         
IsReadOnly .    AutoGenerateColumns .  
??????    Columns 5:      0  *System.Windows.Controls.DataGridTextColumn  5;      ,  &System.Windows.Controls.DataGridColumn   Header$
 Ид??5<         Width5  /System.Windows.Controls.DataGridLengthConverter$
 0.5* 5>      1  +System.Windows.Controls.DataGridBoundColumn   Binding 5=      ?? *Id+5>        5?      $ 
Рейка??5@      $
 0.8* 5B       5A      ?? *Shelf+5B        5C      $ 
Полка??5D      $
 0.8* 5F       5E      ?? *Ledge+5F        5G      $ Сектор??5H      $
 0.8* 5J       5I      ?? *Sector+5J        5K      $ С/Н??5L      $ 2* 5N       5M      ?? *SectorSerialNumber+5N        5O      $ Заполнена??5P      $ * 5R       5Q      ?? *
IsFilled+5R        5S      $ Кол.??5T      $ * 5V       5U      ?? *PiecesInSector+5V      5X      5Y      ?? 5[   
   $??2??6   $??1??6%   .+?5\      ?? $??Сортировка:??6   ?? 5]      -   5        $??BtShowNullSectors??5^      $??Пустые??5_      6"   ?? 5a      -   5        $??BtShowFullSectors??5b      $??Заполненные??5c      5d      ?? 5f      -   5        $??BtResetFilters??5g      $??Сбросить всё??5h      5i      5k      ?? 5m   
   $??2??6   $??1??6"   	 ?? Orientation$	 
Horizontal=?62   $??Center=?6K   $??Center=?6h   .+?5n      ?? ?? 5o      -	   5        
 ?Name$
 RunFoundDocs??5o   1   $*?$Найдено документов:??6   61    ?? 5p      -
   5        $
 RunFoundDocsCount??5p      $? ??6   6   5q      ?? 5r      ?? 5s      -   5        $
 RunTotalDocs??5s   /   $&? Всего документов:??6   6/    ?? 5t      -   5        $
 RunTotalDocsCount??5t      $? ??6   6   5u      ?? 5w      ?? 5x      -   5        $
 RunTotalFilters??5x   1   $*?$Фильтров применено:??6   61    ?? 5y      -   5        $
 RunTotalFiltersCount??5y      $? ??6   6   5z      5{      5|      5}      