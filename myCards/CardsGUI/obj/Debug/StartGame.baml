   M S B A M L   `   `   `  ����I  EKarliCards Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:CardsGUICardsGUI  5   	       CardsGUI.StartGame   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:CardsGUI     5   	     � Title$  Start New Game��5   	   $	��345��6    $	��445��6-    � 
ResizeMode$ NoResize=�69   .��5	      �  � RowDefinitions 5
      �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5      �� $��0��6   ���#C40D42.+�5      �� $��56��6    �� Left$ 0��6   
 �� Top$ 0��6*   $��UniformToFill=�69   $��.\Images\timg.jpg��6Q   �� 5       �� Right$ 10��6   $ 13��6    $��New Game��60   ���	#FFF7EFEF$��Times New Roman)�6Z   $��24(�6w   $
��Bold"�6�   5      �� 5      $��1��6   
���   �5      �� 5      $��3��6    �� Orientation$ 
Horizontal=�6   $��RightToLeft=�67   .+�5      �� -   5        $��cancelButton��5      $��_Cancel��5      $��22��6!   $��75��6-   $��10,0,0,0q�68   5   #   �� 5      -   5        $��okButton��5      $	��_OK��5      $��22��6   $��75��6)   $��10,0,0,0q�64   {�.  5   6   5      �� 5      -   5         ��Name$ label��5      $��Players��6   $
��Left=�6-   $��10,5,0,0q�6H   $��2��6Z   $	��Top=�6g   �� 5      -   5        $ label1��5      $��
New Player��6   $
��Left=�61   $��	252,0,0,0q�6L   $��2��6_   $	��Top=�6l   �� 5      -   5         ��Name$ playerNamesListBox��5      $
��Left=�6*   $	��155��6E   $��	10,31,0,0q�6R   $��2��6e   $	��Top=�6r   $	��227��6�   ��6�   �� 	 �� Path$	 PlayerNames�6�   �� 5      -   5        
 ��Name$
 addNewPlayerButton��5      $	��Add��6)   $
��Left=�67   $��
354,59,0,0q�6R   $��2��6f   $	��Top=�6s   $��64��6�   6�   �� 5       -   5         ��Name$ newPlayerTextBox��5       $
��Left=�6(   $��23��6C   $��
252,31,0,0q�6O   $��2��6c    �� TextWrapping$
 Wrap=�6p   $	��Top=�6�   $	��166��6�   5!      5#      