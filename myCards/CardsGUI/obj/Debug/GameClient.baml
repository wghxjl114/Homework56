   M S B A M L   `   `   `  ����I  EKarliCards Gui, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null#clr-namespace:CardsGUICardsGUI  5   	       CardsGUI.GameClient   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   (localclr-namespace:CardsGUI     5   	     � Title$  Cards Game Client��5   	    � WindowState$ 	Maximized=�6#    � DataContext 5	         CardsGUI.GameViewModel  5
       J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5      -   5           Command$ ApplicationCommands.Close��5      5   (     5      -   5        $ ApplicationCommands.Save��5      5   (     5      -   5        $* $local:GameViewModel.StartGameCommand��5      5         5      -   5        $* $local:GameViewModel.ShowAboutCommand��5      5         5      -   5        $&  local:GameOptions.OptionsCommand��5      5       .��5      � 
��� � � � RowDefinitions 5      �� 5      $��58 �6   �� 5      $��20 �6   �� 5      �� 5      $��42 �6   .+�5!      �� $��0��6   ���#C40D42.+�5"      �� $��56��6    �� Left$ 0��6   
 �� Top$ 0��6*   $��UniformToFill=�69   $��.\Images\timg.jpg��6Q   �� 5#       �� Right$ 10��6   $ 13��6    $��Cards��60   ���	#FFF7EFEF$��Times New Roman)�6W   $��24(�6t   $
��Bold"�6�   5$      ]� 5%      $��0q�6   $��1��6   .+�5&      o� 
���   �$
��Bold"�6    
�������.@�5'   
   m� $��_File��6   .@�5(      m� $��_New Game...��6   
���   �$	��200��6>   	 m� Command$*	 $local:GameViewModel.StartGameCommand��6J   m� 5*      $��_Open��6   $	��200��6$   
���   �60   m� 5+      $��_Save��6   $	��200��6$   
���   �$
	 Save��6C   
 m� Icon
 5,      �� 5-      $#��Images\base_floppydisk_32.png��6   $��20��6=   5/      �� 50      $	��145��6   
���   �6"   m� 51      $��_Close��6   $	��200��6%   
���   �$	 Close��6D   52      m� 53   
   $��_Game��6   
���   �
�������.@�54      m� $��_Undo��6   $
��Left=�6$   $	��145��55      
���   �6   56      m� 57   
   $��_Tools��6   
���   �
�������.@�58      m� $��_Options��6   $
��Left=�6'   $	��200��6B   
���   �$&	  local:GameOptions.OptionsCommand��6a   59      m� 5:   
   $
��Help��6   
���   �
�������.@�5;      m� $��_About��6   $
��Left=�6%   $	��145��6@   
���   �$*	 $local:GameViewModel.ShowAboutCommand��6_   5=      5>   	   5?      ]� 5@      $��2��6   .+�5A      !   CardsGUI.CardsInHandControl  -   5          Name$ Player2Hand��5A   !   $��Right=�66   $	��380��5B      $��Center=�5C      $	��180��6&      PlayerOrientation$ Vertical=�62      Game 5B      ��    Owner 5D      �� *
Players[1]+   PlayerState 6(   �� *Players[1].State+  5E      -   5        $ Player4Hand��5E   !   $
��Left=�66   $
��Left=�5F      $	��380��6&   $��Center=�63   $ Vertical=�5G      $	��180��6E    6(   �� *
Players[3]+ 5H      �� *Players[3].State+ 64   ��   5I      -   5        $ Player1Hand��5I   !   $	��Top=�66   $��Center=�5J      $	��154��6(   $	��Top=�65   $ 
Horizontal=�5K      $	��380��6G    6*   �� *
Players[0]+ 5L      �� *Players[0].State+ 64   ��   5M      -	   5        $ Player3Hand��5M   !   $��Bottom=�66   $��Center=�5N      $	��154��6(   $	��Top=�65   $ 
Horizontal=�5O      $	��380��6G    6*   �� *
Players[2]+ 5P      �� *Players[2].State+ 64   ��    CardsGUI.GameDecksControl  5Q      -
   5          Name$ 	GameDecks��5Q   ,   $	��180��6      Deck 6?   �� *
GameDeck+   AvailableCard 5R      �� *CurrentAvailableCard+   CurrentPlayer 5S      �� *CurrentPlayer+   GameStarted 5T      �� *GameStarted+5U      5W      5X      