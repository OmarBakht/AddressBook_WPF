   M S B A M L   `   `   `  ����F  BAddBook_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:AddBook_WPFAddBook_WPF  5   	       AddBook_WPF.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:AddBook_WPF     5   	     � Title$  	PhoneBook��5   	   $	��250��6   $	��450��6(   .��5	      � -   5         �Name$ Search��5	      $��0,0,0,0q�6   .+�5
   
   �� -   5         ��Name$ txtname��5
      $
��Left=�6#   $��	81,13,0,0q�6>    �� TextWrapping$
 Wrap=�6Q   $	��Top=�6e   $	��120��6}   �� 5   
   -   5        $ txtPhone��5      $
��Left=�6$   $��	81,36,0,0q�6?   $
 Wrap=�6R   $	��Top=�6f   $	��120��6~   �� 5   
   -   5        $ 
txtAddress��5      $
��Left=�6&   $��	81,59,0,0q�6A   $
 Wrap=�6T   $	��Top=�6h   $	��319��6�   $��39��6�   �� 5   
   -   5        $ 	txtSearch��5      $
��Left=�6%   $��
81,191,0,0q�6@   $
 Wrap=�6T   $	��Top=�6h   $	��235��6�   �� 5   
   -   5        $ txtNotes��5      $
��Left=�6$   $��
81,126,0,0q�6?   $
 Wrap=�6S   $	��Top=�6g   $	��319��6   $��39��6�   �� 5   
   $
��Left=�6   $��	21,13,0,0q�6/   $��
Full Name ��6B   $
��Wrap=�6T   $	��Top=�6h   $��55��6�   �� 5   
   $
��Left=�6   $��	30,36,0,0q�6/   $��Phone # ��6B   $
��Wrap=�6R   $	��Top=�6f   $��46��6~   �� 5   
   $
��Left=�6   $��	30,59,0,0q�6/   $��Address��6B   $
��Wrap=�6Q   $	��Top=�6e   $��46��6}   �� 5   
   $
��Left=�6   $��	5,105,0,0q�6/   $��Organization��6B   $
��Wrap=�6V   $	��Top=�6j   $��76��6�   �� 5   
   $
��Left=�6   $��
41,126,0,0q�6/   $��Notes��6C   $
��Wrap=�6P   $	��Top=�6d   $��35��6|   �� 5   
   -   5         ��Name$ btnAddContact��5      $��Add Contact��6(   $
��Left=�6>   $��320,103,0,0q�6Y   $	��Top=�6n   $��80��6�   6�   �� 5   
   $
��Left=�6   $��
41,191,0,0q�6/   $��Search��6C   $
��Wrap=�6Q   $	��Top=�6e   $��38��6}   �� 5   
   -   5        $ 	btnSearch��5      $��Search��6$   $
��Left=�65   $��321,191,0,0q�6P   $	��Top=�6e   $��79��6}   6�   �� 5   
   -	   5        $ txtOrg��5      $
��Left=�6"   $��
81,103,0,0q�6=   $
 Wrap=�6Q   $	��Top=�6e   $	��120��6}   5      5      