   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KP.ViewsKP.Views  5          KP.Views.RepairPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:KP.Views     5      -   5          N� Title$  
RepairPage��5	      .��5      �  � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 
RepairGrid��5         AutoGenerateColumns .     
IsReadOnly . $��2��5   %      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 
Номер��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$
 auto 64   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6A   �� *Id+  5      $ Номер станка��6%   $
 auto 6;    6H   �� *	IdMachine+  5      $ Дата создания��6%   $
 auto 6<    6I   �� *DateOfCreate+	 �� StringFormat$	 {0:dd.MM.yyyy}��  5      $ Дата ремонта��6%   $
 auto 6;    6H   �� *DateOfRepairing+$	 {0:dd.MM.yyyy}��  5      $, &Дата закрытия заявки��6%   $ * 6C    6M   �� *DateOfClose+$	 {0:dd.MM.yyyy}��  5      $ Инженер��6%   $
 auto 66    6C   �� *User.FullName+  5      $ Результат��6%   $ * 68    6B   �� *Result+
   ElementStyle
 5      �� 5        �� 
TargetType" ��6   .�5!      ��  �� Property � �� �� Value$
 Wrap=�69   5"      5$      4  .System.Windows.Controls.DataGridTemplateColumn  5%      $
 auto 6)      CellTemplate 5&      �� 5'      .R�5(      �� $��BtnEdit��6=   -   5        $ ��Редактировать��5(   %   $
��Left=�6L    � 	Resources 5)   "   ��%_   '��       �� 5*   &   " ��6,   .�5+   *   ��  �@��CornerRadius$ 10��6I   5,   '   5-   #   5.      5/      51        52      $
 auto 6)    53      �� 54      .R�55      ��  ��Name$ Close��6%   -   5        $!��Закрыть заявку��55   4   $
��Left=�6M   $	��120��6i    56   "   ��%_   '��       �� 57   &   " ��6,   .�58   *   ��  �@��CornerRadius$ 10��6I   59   '   5:   #   5;      5<      5>      5@      �� 5B   
   $��0��6   .+�5C      �� -   5        $	 Add��5C      $��Добавить��6"   $��90��66    5D      ��%_   '��       �� 5E      " ��6   .�5F      ��  �@��CornerRadius$ 10��69   5G      5H      5I      �� 5J      -   5        $ Delete��5J      $��Удалить��6%   $��90��67   $	��Top=�6W    5K      ��%_   '��       �� 5L      " ��6   .�5M      ��  �@��CornerRadius$ 10��69   5N      5O      5P      �� 5R      -   5        $ Excel��5R      $��
Отчёт��6$   $��90��64    5S      ��%_   '��       �� 5T      " ��6   .�5U      ��  �@��CornerRadius$ 10��69   5V      5W      5X      5Z      5\      5]      