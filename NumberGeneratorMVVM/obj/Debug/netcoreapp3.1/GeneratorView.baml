   M S B A M L   `   `   `  ����N  JNumberGeneratorMVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:NumberGeneratorMVVMNumberGeneratorMVVM  5      '    !NumberGeneratorMVVM.GeneratorView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      3local!clr-namespace:NumberGeneratorMVVM     5        � 	Resources  5         StartButtonStyle �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value �� 
TargetType �� CornerRadius	 ��Name
 �� Triggers  StopButtonStyle��%n  &	        &	 -    �� 5   
   " ��6)    5      P� 5       � ��$
 True��6/   . �5      ��  � ��$ 95��6.   �� 5       � ��$ 15��6/   5      .�5      ��  � �� �#8CC6D86+   �� 5       � ��$	 100��6&   �� 5       � ��$ 20��6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ 4��6!   #��z��62   ._�5       �� $	 MyContentPresenter��6/   #��z��6K   $��Center=�5!   ?   $��Center=�6\   $��0,0,0,0q�6w   5#      
 5%      P� 5&       �@J�IsMouseOver$
 True��6=   . �5'   "   ��  � �� �#E594006?   �� 5(   "    � ��
 �����6?   5*      P� 5,       � ��$
 True��6;   . �5-   "   ��  � ��
 � E��6?   �� 5.   "    � ��
 �����6?   50      52      54      55      �� 57   
   " ��6(    59      P� 5:       � ��$
 True��6/   . �5<      ��  � ��$ 95��6.   �� 5=       � ��$ 15��6/   5?      .�5A      ��  � �� �#FFA3966+   �� 5B       � ��$	 100��6&   �� 5C       � ��$ 20��6'   �� 5F       � �� 5G      �� 5H      " ��6&   .R�5I      �� $ 4��6!   #��z��62   ._�5K      �� $	 MyContentPresenter��6/   #��z��6K   $��Center=�5L   /   $��Center=�6L   $��0,0,0,0q�6g   5N      
 5P      P� 5Q       �@J�IsMouseOver$
 True��6=   . �5R   "   ��  � �� �#E594006?   �� 5S   "    � ��
 �����6?   5U      P� 5W       � ��$
 True��6;   . �5X   "   ��  � ��
 � E��6?   �� 5Y   "    � ��
 �����6?   5[      5]      5_      5`      5a      .��5c      �  � RowDefinitions 5d   
   �� 5e      $��* �6   6)   �� 5f      $��50 �6   6*   .+�5i   
   �� $��0��6   ���#27A2C9$��2q�5k      ._�5m      ,   &NumberGeneratorMVVM.AutoScrollListView  -   5          Name$ TheListBox0��5m   (   ��6>   �� *UsingValues+��5n      �� 5o      .R�5p      �  � Orientation$ 
Horizontal=�6$   ��5q   $   �� * (FrameworkElement.ActualWidth)+ �� RelativeSource ��  �� AncestorType ScrollContentPresenter � 	ItemWidth 5r   $   �� *(ListView.View).ItemWidth+ ��  ListView��5s   $   �� *	ItemWidth+ �� *Self+ � 
ItemHeight 5t   $   �� *(ListView.View).ItemHeight+ ��  ListView5u      ��5x      �� 5y      .R�5{      ��  ��Name$ myNum��6$   $��16(�63   $��Center=�6`   ��6A   ��  �� Path$ NumValue�6`    �� Triggers 5}      �� 5~       �� Value$
 true��6G    �� Binding 6*   �� *
IsSimple+.a�5   "   ��  �� 
TargetName$ myNum��6)    � ��
 �  ��6R   5�      5�      5�      5�      �� 5�   
   -   5         ��Name$ StartBut��5�      $��1��6%   $��
Старт��62   $��5q�6B   $
��Left=�5�      #��[  65   ��5�   M   �� *StartGenerateCommand+5�      �� 5�   
   $��1��6   $��Стоп��6   $��5q�6-   $��Right=�5�      #��[ 5�      ��5�   8   �� *StopGenerateCommand+5�      5�      5�      