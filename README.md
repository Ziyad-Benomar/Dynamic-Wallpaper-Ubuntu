# Dynamic-Wallpaper-Ubuntu
A simple bash script to set dynamic wallpaper and dynamic on ubuntu with gnome desktop  

The objective is to set a dynamic thème (light/ dark) and a dynamic wallpaper (that changes during the day)   

--------------------------------------------------------------------------------------  
## Set a dynamic theme and a dynamic wallpaper !  
--------------------------------------------------------------------------------------  
- Download the files run_me.sh ; dynTheme.sh ; dynTheme.sh.desktop and put them in a same folder  
- Open a terminal in this folder and run the commands :  
     chmod +x run_me.sh   
     chmod +x dynTheme.sh  
     ./run_me.sh   
- Go to your home, you must find a folder ".DynTheme" that have been created  
  (it is a hidden directory, so if you can't find it press "ctrl + H" to make it visible)  
- Open it, you will find another directory "DynWallpaper"  
- Download the content of the folder "DynWallpaper" given in this repository and put it in your "DynWallpaper"  
We're done !!  

--------------------------------------------------------------------------------------  
## Settings  
--------------------------------------------------------------------------------------  
Enable/Disable dynamic theme/wallpaper
- Go to .DynTheme  
- Open dynTheme.sh, you'll find in the beginning of the script a section 'SETTINGS'  
- The variables 'changeTheme' and 'changeBg' are set to 1, set them to 0 respectively  
  to disable the dynamic theme and the dynamic wallpaper  
- The variables 'switchLight' and 'switchDark' define the time we switch to the light/dark theme  
  You can change them also as you wish (they take values from 0 to 23)  
- The variables 'lightTheme' and 'darkTheme' contain the names of the light and the dark theme  
  we'll use. They are set to Adwaita and Adwaita-dark   

--------------------------------------------------------------------------------------  
## Custom theme and wallpaper mages
--------------------------------------------------------------------------------------  
- You can choose the JPEG background images you want and put them in DynWallpaper  
- Their names must be numbers (00.jpeg, 01.jpeg, 02.jpeg, ..., 23.jpeg)  
- The name of each picture is the hour when it will be set as background  
  ( You can have for exaple only three images 06.jpeg, 13.jpeg, and 20.jpeg )  

- To change the theme, You should first create a directory named ".themes" in
  your home if it doesn't exist.("ctrl + H" to show/hide hidden directories)  
- You can download plenty of themes on [gnome-look](gnome-look.org), unzip them,
  and put them in your ".themes" directory  
- Open .DynTheme/dynTheme.sh, and change 'lightTheme' and 'darkTheme' to the names
  of the themes you want to use !  

I hope you enjoy !! :)



