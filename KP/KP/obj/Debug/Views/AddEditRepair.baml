   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KP.ViewsKP.Views  5          KP.Views.AddEditRepair   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      (localclr-namespace:KP.Views     5        N� Title$  AddEditRepair��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $	��100 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $	��100 �6   �� 5      $��* �6   .+�5   
   �� $
��Wrap=�6   $��Center=�6(   $��Center=�6E   $��Номер станка��6`   �� 5   
   $��1��6   $
��Wrap=�6!   $��Center=�65   $��Center=�6R   $��Дата ремонта��6m   �� 5   
   $��2��6   $
��Wrap=�6"   $��Center=�66   $��Center=�6S   $��Инженер��6n   �� 5   
   -   5         ��Name$ 
CmbMachine��5   D   $��1��64    �� DisplayMemberPath$ Id��6X   $��10,0,5,0q�6o    �� SelectedItem 6   �� *	Machine+6o   (  "System.Windows.Controls.DatePicker  5   
   -   5        $��DateOfRepairing��5   �   $��1��6>   $��
10,0,435,0q�6N   $��1��6b      DisplayDateStart$ 
01.01.2023X�6o   $��Center=�6�      SelectedDate 6   �� *DateOfRepairing+6�   �� 5   
   -   5        $ CmbUsers��5   N   $��2��61   $��1��6>   $ FullName��6`   $��10,0,5,0q�6}    6   �� *User+6}   �� 5   
   -   5        $��AddEdit��5   c   $��2��6   $��3��6%   $��Сохранить��62   $��Center=�6F    � 	Resources 5       	 �� 
TargetType
 �� Property �� Value��%_   '��       �� 5!      "	 ��6   .�5"      �� 
 �@��CornerRadius$ 10��65   5#      5$      5%      5&      5'      