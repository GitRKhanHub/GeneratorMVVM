   M S B A M L   `   `   `  ����N  JNumberGeneratorMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:NumberGeneratorMVVMNumberGeneratorMVVM  5   	   (    "NumberGeneratorMVVM.MainWindowView   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:NumberGeneratorMVVM     5   	     � Title$  MainWindowView��5   	   $	��450��6    $	��800��6-    � 	Resources 5	         SliderRepeatButton �� 
TargetType �� Property �� Value �� 
TargetType  SliderRepeatButton1 J� SnapsToDevicePixels  SliderThumb 
 Slider � RowDefinitions ]�Name	 ]� DecreaseRepeatButton
 ]� Thumb ]� IncreaseRepeatButton  Horizontal_Slider �� Triggers P� Property P� Value��%  &	        &	 o    &	 �    &	 �    7  7  7   &	 X    7  �� 5   
   " ��6+   .�5      ��  �@J�SnapsToDevicePixels$
 true��64   �� 5       �@�OverridesDefaultStyle$
 true��66   �� 5       � ��$ false��6*   �� 5       � |�$ false��6*   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $��1q�6"   ���#27A2C9$��4��6L   5      5      5      �� 5   
   " ��6,   .�5      ��  �@J�SnapsToDevicePixels$
 true��64   �� 5       �@�OverridesDefaultStyle$
 true��66   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $
 True��6!   ���#27A2C9$��1q�6R   $��4��6g   5       5"      5#      �� 5%   
   " n�6$   .�5&      ��  �@J�SnapsToDevicePixels$
 true��64   �� 5'       �@�OverridesDefaultStyle$
 true��66   �� 5(       � �� 5)      �� 5*      " n�6&   .R�5+      A� $��15��6"   $��15��6.   ���#27A2C96J   5,      5.      5/      �� 51   
   " ��6*   .R�52      �  53      �� 54      $
��Auto �6$   �� 55      $
��Auto �6$   #��z��62   �� 56      $
��Auto �6$   .+�58      ]� $ 
PART_Track��6%   $��1��6   	 59      �� 5:      8��  $��Slider.DecreaseLarge��6U   
 5<      n� 5=      8�� 6     5?      �� 5@      8�� $��Slider.IncreaseLarge��6S   5B      5C      5D      �� 5F   
   " ��6*   .�5G      ��  � |�$ False��6*   �� 5H       �@J�SnapsToDevicePixels$
 true��64   �� 5I       �@�OverridesDefaultStyle$
 true��66    5J      P� 5K       �@��Orientation$ 
Horizontal=�61   . �5L      ��  � ��$ 24��62   �� 5M       � ��$	 104��61   �� 5N       � ��8   61   5O      5Q      5R       � DataContext 5T      &    NumberGeneratorMVVM.MainWindowVM  5U   
   .��5Y      � ���#2E2C33 � ColumnDefinitions 5[   
   �� 5\      6!   �� 5]      6!   �� 5^       5a   
   �� 5b      $��50 �6   �� 5c      $��* �6   �� 5d      $��50 �6   .+�5g   
   �� $��0��6   $��3��6#   $#��Генератор чисел��67    �� TextAlignment$ Center=�6N   $��5q�6f   ���#27A2C9$��30(�6�   $��Center=�6�   '   !NumberGeneratorMVVM.GeneratorView  5i   
   $��1��6   $��0��6-   $��5q�5j   F    6   �� *GeneratorVMs[0]+6F     5l   
   $��1��6   $��1��6,   $��5q�5m   F    6   �� *GeneratorVMs[1]+6F     5o   
   $��1��6   $��2��6,   $��5q�5p   F    6   �� *GeneratorVMs[2]+6F   �� 5r   
   $��2��6   $��3��6#    �� Orientation$ 
Horizontal=�67   $��Center=�6P   .+�5s      �� $ Center=�6J   $��20��6a   $��50��6m   $��5q�6x   
���������6   ��  �� ElementName$ Slider�� �� Path$ Minimum�6�   �� 5t      -   5         ��Name$ Slider��5t   @   #��[ 6    � Minimum$	 100Q�6S    � Maximum$
 1000Q�6a    �� SelectionStart$	 100Q�6p   $��30��6�   $	��300��6�    �� IsSelectionRangeEnabled$
 True��5u       �� TickFrequency$	 100Q�64    �� IsSnapToTickEnabled$
 True��6H    �� AutoToolTipPlacement$ BottomRight=�6|   
����� � � Value 6c   �� *Period+5v      �� 5w      $ Center=�6J   $��20��6a   $��50��6m   $��5q�6x   
���������6   �� $ Slider��$ Maximum�6�   5x      5�      5�      