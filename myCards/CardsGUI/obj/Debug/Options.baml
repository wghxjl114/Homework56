   M S B A M L   `   `   `  ����I  EKarliCards Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:CardsGUICardsGUI  5   	       CardsGUI.Options   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:CardsGUI     5   	     � Title$  Options��5   	   $	��345��6   $	��434��6&    � 
ResizeMode$ NoResize=�62    � 	Resources 5	      #   CardsGUI.InverseBoolConverter   inverseBool��%   &	          5
      6!   5      .��5      �  � RowDefinitions 5      �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5      �� $��0��6   ���#C40D42.+�5      �� $��56��6    �� Left$ 0��6   
 �� Top$ 0��6*   $��UniformToFill=�69   $��.\Images\timg.jpg��6Q   �� 5       �� Right$ 10��6   $ 13��6    $��Options��60   ���	#FFF7EFEF$��Times New Roman)�6Y   $��24(�6v   $
��Bold"�6�   5      �� 5      $��1��6   
���   � 5         CardsGUI.NumberOfPlayers  numberOfPlayersData��%   &	         5   
   6    5   	   .+�5      �� $��2��6   $ 10��6$   $ 2��65   $	��408��6D   $	��208��6P   $��1��6]   .@�5   
   �� $
��Game��6   .��5      � ���	#FFE5E5E5.+�5      �� -   5        $��playAgainstComputerCheck��5   }   $��Play against computer��6   $
��Left=�67   $��	11,33,0,0q�6R   $	��Top=�6e    d� 	IsChecked 6�   ��  �� Path$ PlayAgainstComputer��� 5       $��Number of players��6   $
��Left=�60   $��	10,54,0,0q�5!      $	��Top=�6   �� 5"      -   5        $��numberOfPlayersComboBox��5&      $
��Left=�5"      $��
196,58,0,0q�5#      $	��Top=�5$      $��86��5%      ��5'      �� 	 �� Source#	 [ 
 �� SelectedValue
 5(      �� $ NumberOfPlayers�{�5)      ��  �� ElementName$ playAgainstComputerCheck��$ 	IsChecked� �� 	Converter# [  5*      5+      �� 5,   
   $��Computer Player��6   .��5-      � ���	#FFE5E5E5.+�5.      �� $��Skill Level��6   $
��Left=�6*   $��	10,10,0,0q�6E   $	��Top=�6X   	� 5/      -   5        $��dumbAIRadioButton��5/   o   $
��Dumb��6   $
��Left=�6)   $��	37,41,0,0q�6D   $	��Top=�6W   6�   	� 50      -   5        $��goodAIRadioButton��50   o   $
��Good��6   $
��Left=�6)   $��	37,62,0,0q�6D   $	��Top=�6W   6�   	� 51      -   5        $��cheatingAIRadioButton��51   q   $��Cheats��6   $
��Left=�6+   $��	37,83,0,0q�6F   $	��Top=�6Y   6�   52      53      54   	   55      �� 56      $��3��6    �� Orientation$ 
Horizontal=�6   $��RightToLeft=�67   .+�57      �� -   5        $��cancelButton��58      $��_Cancel��57      $��22��6!   $��75��6-   $��10,0,0,0q�68   58   #   �� 59      -   5        $��okButton��5:      $	��_OK��59      $��22��6   $��75��6)   $��10,0,0,0q�64   5:      5;      5<      5=      