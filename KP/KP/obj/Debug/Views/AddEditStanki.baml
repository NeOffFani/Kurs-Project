   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KP.ViewsKP.Views  5          KP.Views.AddEditStanki   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:KP.Views     5        N� Title$  AddEditStanki��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   �� $
��Wrap=�6   $��Center=�6(   $��Center=�6E   $��Название��6`   �� 5   
   $��1��6   $
��Wrap=�6!   $��Center=�65   $��Center=�6R   $��Дата покупки��6m   �� 5   
   $��2��6   $
��Wrap=�6"   $��Center=�66   $��Center=�6S   $��Статус��6n   �� 5   
   -   5        $��NameTxb��5   [   $��1��6(    �� 	MaxLength$ 50��68    �� TextWrapping$
 Wrap=�6G   $��	10,0,50,0q�6k   ��6   �� *Name+6k   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ DateOfPurchase��5   �   $��1��6=   $��
10,0,435,0q�6M   $��1��6a      DisplayDateStart$ 
01.01.2023X�6n   $��Center=�6�      SelectedDate 6   �� *DateOfPurchase+6�   �� 5   
   -   5         ��Name$ 	CmbStatus��5   P   $��2��63   $��1��6@   	 �� DisplayMemberPath$	 Title��6c   $��10,0,5,0q�6}   
 �� SelectedItem
 6   �� *Status+6}   �� 5   
   -   5        $��AddEdit��5   c   $��2��6   $��3��6%   $��Сохранить��62   $��Center=�6F    � 	Resources 5        �� 
TargetType �� Property �� Value��%_   '��       �� 5!      " ��6   .�5"      ��  �@��CornerRadius$ 10��65   5#      5$      5%      5'      5(      