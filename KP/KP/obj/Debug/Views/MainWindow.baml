   M S B A M L   `   `   `  ����=  9KP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:KP.ViewsKP.Views  5   	       KP.Views.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:KP.Views     5   	     � WindowStartupLocation$  CenterScreen=�5   	    � Title$� �Автоматизированная система: Планирование и обслуживание станков в цеху��5	   	   $	��450��6X   $	��800��6e   .��5
      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      $��* �6   .+�5   
   �� $
��Left=�5       �� Orientation$ 
Horizontal=�5      $��Center=�5      $	��700��60   $��40��6<   $��	100,0,0,0q�6H   .+�5      �� -   5         ��Name$ Machine��5      $��Станки��6&   $	��120��67    � 	Resources 5       �� 
TargetType �� Property �� Value��%_   '��       �� 5      " ��6   .�5      ��  �@��CornerRadius$ 10��69   5      5      5      �� 5       -   5        $
 Test��5       $��Тестирование��6#   $
��Left=�6:   $	��120��6U    5!      ��%_   '��       �� 5"      " ��6   .�5#      ��  �@��CornerRadius$ 10��69   5$      5%      5&      �� 5(      -   5        $ Repair��5(      $��Ремонт��6%   $
��Left=�66   $	��120��6Q    5)      ��%_   '��       �� 5*      " ��6   .�5+      ��  �@��CornerRadius$ 10��69   5,      5-      5.      5/       � 51   
   -   5        	  �Name$	 MyFrame��51      $��1��6!   $��2��6.   
  � NavigationUIVisibility$
 Hidden=�6B   �� 52   
   $��20,0,0,0q�6   $��/pngwing.com.png��6"   $
��Fill=�6<   $��50��6K   $��Center=�6W   $
��Left=�6r   $��50��6�   56      57      