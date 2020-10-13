#!/bin/bash


#############################################################################
#############################################################################
# SETTINGS
#############################################################################
#############################################################################
# Choose your themes !!
#----------------------
lightTheme='Adwaita'
darkTheme='Adwaita-dark'

# Choose when to switch from light to dark mode !!
#--------------------------------------------------
switchLight=6
switchDark=19


# Set changeTheme to 1 if you want to have a dynamix light/dark theme, and 0 otherwise
#-------------------------------------------------------------------------------------
changeTheme=1

# Set changeBg to 1 if you want to have a dynmaic wallpaper, and 0 otherwise
#---------------------------------------------------------------------------
changeBg=1

#############################################################################
#############################################################################
# END OF SETTINGS
#############################################################################
#############################################################################


#############################################################################
cd
path=`pwd`/.DynTheme
#############################################################################
# Importing system variables (needed for crontab)
#------------------------------------------------
euid=$(id --real --user)
pid=$(pgrep --euid $euid gnome-session)
toEval=$(cat $path/myEnv.txt| grep DBUS_SESSION_BUS_ADDRESS)
eval "export $toEval"

#############################################################################
# Gather facts :
#---------------
currTime=`date "+%H"`
currTheme=`gsettings get org.gnome.desktop.interface gtk-theme`

#############################################################################
# Adapt background img :
#-----------------------

if [ $changeBg == 1 ]
then	
  for x in '23' '22' '21' '20' '19' '18' '17' '16' '15' '14' '13' '12' '11' '10' '09' '08' '07' '06' '05' '04' '03' '02' '01' '00'
  do
	  if [ $x -le $currTime ] && [ `ls "$path"/DynWallppr | grep -c $x` == 1 ]; then
		  bgImg=$x
		  break
		fi
  done
  gsettings set org.gnome.desktop.background picture-uri file://"$path"/DynWallppr/"$bgImg".jpeg
fi

#############################################################################
# Adapt theme :
#--------------
if [ $changeTheme == 0 ]
then
  exit 1
fi

if [ $currTime -lt $switchLight ] || [ $currTime -ge $switchDark ]
then
	if [ $currTheme != $darkTheme ]
  then
	  gsettings set org.gnome.desktop.interface gtk-theme $darkTheme
		gsettings set org.gnome.shell.extensions.user-theme name $darkTheme

	fi
else
	if [ $currTheme != $lightTheme ]
  then
	  gsettings set org.gnome.desktop.interface gtk-theme $lightTheme
		gsettings set org.gnome.shell.extensions.user-theme name $lightTheme
	fi
fi

#############################################################################

