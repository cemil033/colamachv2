   M S B A M L   `   `   `  ����H  DColamachinev2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Colamachinev2Colamachinev2  5   	       Colamachinev2.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Colamachinev2     5   	   _ [MaterialDesignThemes.Wpf, Version=4.3.0.3, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  63     � Title$  
MainWindow��5   	   $
��1080��6   $
��1920��6*    � 
ResizeMode$ NoResize=�5	   	    � WindowState$ 	Maximized=�5
   	    � WindowStyle$
 None=�5   	    � 	Resources 5       �� MergedDictionaries �� Source   _ListBoxItemStyle �� 
TargetType �� Property	 �� Value
 �� 
TargetType �� Padding J� SnapsToDevicePixels �� Triggers P� Property P� Value �� 
TargetName�� 5   
    5      �� 5      $f `pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Button.xaml?�6%   %q  &	        �� 5      " ��6.   .�5      ��  � ��	 5      �� 5      "
 ��6*   .R�5      �� $��_Border��6%   $ 2q�5   !    . ._�5   "   �� 5       5      P� 5   "    �@��
IsSelected . . �5   &   �� $ _Border��6-    � ��
	 � ���6X   �� 5   &    � ��
	 �  ��6C   5   #   5       5"      5#      5$      .��5&      � 
����ح� � RowDefinitions 5'   
   �� 5(      $��60 �6   6*   �� 5)      $
��1020 �6   6,    � ColumnDefinitions 5+   
   �� 5,      -   5         �Name$
 menu��5,      $��50 �6+   68   �� 5-      $
��1220 �6   6.   �� 5.      $��80 �6   6,   �� 5/      $	��300 �6   6-   .+�51   
   � 
���� ��.+�52   
   �� -   5        $��	btn_sebet��52   /   $��0��6   $��0��6"   $
��Left=�6@   $	��Top=�6[     MaterialDesignIconButton#��[ 53       � ToolTip$ MaterialDesignIconButton��54       ( $MaterialDesignTextFieldBoxBackground#���  56      {�57      �� *DataContext.ControlsEnabled+ �� RelativeSource �� *FindAncestor+ �� AncestorType$ WindowL�.��58   
   '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ CartVariant=�59      5:      5;      � 5<   
   $��1��6   $��0��6   
���� �� 5=      �� 5>      6"   �� 5?      $��2* �6    6.    5A      �� 5B      $��50 �6#   60   �� 5C      $	��250 �6#   61   .+�5E      � $��1��6   $��0��6$    5F      �� 5G      6&   �� 5H      $��2* �6$   62   .+�5J      �� -   5        $��medax��5T      $��Right=�5K       % !MaterialDesignFloatingHintTextBox#��[ 5L      $	��Top=�5M      .  (MaterialDesignThemes.Wpf.TextFieldAssist   HasClearButton .    
PrefixText$  ��5O         
SuffixText$	 ₼��5P      
�������$	��160��5R      $	��250��5S      $��0q�5U      $��22(�5V      .��6#   )  #MaterialDesignThemes.Wpf.HintAssist   Hint 5W      �� 5X       �� Orientation$ 
Horizontal=�5Y      $��0 0 0 0q�5Z      .+�5[        $
 Cash=�5\      �� 5]      $��Mebleg daxil edin��5^      5_      .��5`   6   5a      �� 5b      -   5        $��1��5d       % !MaterialDesignOutlinedLightButton#��[ 5e      $" MaterialDesignOutlinedButton��5f      $��Tesdiq��5g      $	��Top=�5h      $��Right=�5i      $	��250��5j      {�5k      �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�5l      � 5m      $��1��6   $��1��6$   $��Right=�61   $	��Top=�6M    5n      �� 5o      6&   �� 5p      6&   �� 5q      6&   �� 5r      6&   .+�5t      �� $��0��5u      $��Right=�6"   $	��Top=�6>   $	��250��5v      $��0q�5w      $��Balans��5x        MaterialDesignGroupBox#��[ 5y      .  (MaterialDesignThemes.Wpf.ColorZoneAssist   Mode$ SecondaryMid=�5z      .��5{      �� -   5        $��	tb_balans��5}      $��Right=�5|      $	��Top=�63   
�������$��16(�5      ��5�      �� *Balans+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5�      �� 5�      $��1��6   $��Right=�6*   $	��Top=�6F   $	��250��5�      $��0q�5�      $��Yekun��5�      #��[ 5�      $ SecondaryMid=�5�      .��5�      �� -   5        $��tb_yekun��5�      $��Right=�5�      $	��Top=�63   
�������$��16(�5�      ��5�      �� *Yekun+$ TwoWay=�$ PropertyChanged=�5�      �� 5�      $��2��6   $��Right=�6)   $	��Top=�6E   $	��250��5�      $��0q�5�      $��Qaliq��5�      #��[ 5�      $ SecondaryMid=�5�      .��5�      �� -   5        $��tb_qaliq��5�      
�������$��Right=�5�      $	��Top=�63   $��16(�5�      ��5�      �� *Qaliq+$ TwoWay=�$ PropertyChanged=�5�      � 5�      $��3��6   
���� ��$	��250��5�      .+�5�      �� -   5         " MaterialDesignRaisedDarkButton#��[ 5�      $	��150��5�      +  %MaterialDesignThemes.Wpf.ButtonAssist    CornerRadius$  90��5�      $7 1MaterialDesignRaisedDarkButton with Round Corners��5�      {�5�      �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�.��5�      �� $��35(�5�      $��Odemek��5�      5�      5�      5�      5�      (  "MaterialDesignThemes.Wpf.ColorZone  5�   
   $��1��5�   	   $��0��6   !   Mode$! Standard=�5�   	   $��8 4 8 4q�5�   	   "   CornerRadius$" 2��5�   	   # K� ZIndex$# 1��5�   	   $��16 0 0 0q�5�   	   +  %MaterialDesignThemes.Wpf.ShadowAssist$   ShadowDepth$$ Depth1=�5�   	   .��5�      �  5�      �� 5�      $
��Auto �5�      �� 5�      $��* �5�      �� 5�      $
��Auto �5�      .+�5�      �� -	   5          MaterialDesignToolButton#��[ 5�      .��5�        $ Search=�5�      % J� Opacity$	% .56Q�5�      5�      �� 5�      -
   5        $��tb_Seach��5�      $��1��5�      $��8 0 0 0q�5�      $ Build a search bar��5�      &   DecorationVisibility$& Hidden=�5�      $��0q�5�      $	��200��5�      $��Center=�5�      �� 5�      #��[ 6   $��2��5�      .��5�        $ 
Microphone=�5�      $	% .56Q�5�      $��8 0 0 0q�5�      5�      5�      5�      �� 5�   
   -   5        $��lstBox��5�      #���   5�      $��0q�5�      ' �� SelectionMode$' Single=�5�      $
��1220��5�      $��5q�5�      
����·�$��1��5�   "   $��1��62   ��5�      �� *items+$ TwoWay=�$ PropertyChanged=���5�      �� 5�      .R�5�      �� 
������$	��180��6:   .+�5�      �� -   5        
���� ��$��22(�5�   �   $��5q�6�   ��6[   �� *Name+$ TwoWay=�$ PropertyChanged=�6�   �� 5�      $��Price��6%   $��16(�62   $��5,0,5,0q�6@   6S   �� 5�      
���� ��$��22(�6�   $��5q�6�   ��6%   �� *price+$ TwoWay=�$ PropertyChanged=�6�   �� 5�      $��Stock��6%   $��16(�62   $��5q�6@   6M   �� 5�      
���� ��$��22(�6�   $��5q�6�   ��6%   �� *count+$ TwoWay=�$ PropertyChanged=�6�   �� 5�      -   5         + 'MaterialDesignFloatingActionLightButton#��[ 5�      $ Sebete elave et��5�      $��16(�5�      $��5q�6,   .��5�        $ CartPlus=�5�      $��20��5�      $��20��5�      5�      5�      5�      ��5�      �� 5�      .R�5�      � $
��1220��6    ( K� IsItemsHost( . ) � Orientation$) 
Horizontal=�6@   5�      5�      � 5�   
   $��2��6   $��1��6   .+�5�      �� -   5        $
��Left=�5�      $	��Top=�5�      $��5q�5       4	 0MaterialDesignFloatingActionSecondaryLightButton#��[	 5     $6 0MaterialDesignFloatingActionSecondaryLightButton��5     {�5     �� *DataContext.ControlsEnabled+ �� *FindAncestor+$ WindowL�.��5       $ HamburgerPlus=�5     $��20��5     $��20��5     5     5	     � 5
  
   $
��Left=�6   $	��Top=�6*   $��3��6B   $��1��6R   $	��400��5     $	��300��6   .+�5     �� 
��� � �$	��300��6-   .+�5     �� $
��Name��6   $��28(�6(   $��5,0,5,0q�66   6I   �� 5     
������
���� ��$��22(�6�   $��5q�6�   ��6   �� *ename+$ TwoWay=�$ 	LostFocus=�6�   �� 5     $��Price��6   $��28(�6)   $��5,0,5,0q�67   6J   �� 5     
������
���� ��$��22(�6�   $��5q�6�   ��6   �� *eprice+$ TwoWay=�$ 	LostFocus=�6�   �� 5     $��Stock��6   $��28(�6)   $��5q�67   6D   �� 5     
������
���� ��$��22(�6�   $��5q�6�   ��6   �� *ecount+$ TwoWay=�$ PropertyChanged=�6�   �� 5     -   5        $��Center=�5     $��Center=�5     #��[ 5     $	��120��5     $	��120��5     $- 'MaterialDesignFloatingActionLightButton��5     $��28(�5     $��5q�6#   .��5       -   5        $
��icon��5     $ HamburgerPlus=�5     $	��100��5     $	��100��5      5!     5"     5$     5%     5&     