#!/bin/bash

# Get the script dir
_script="$(readlink -f ${BASH_SOURCE[0]})"
_base="$(dirname $_script)"

# Creating .DynTheme
cd
mkdir .DynTheme
mkdir .DynTheme/DynWallpaper
env > `pwd`/.DynTheme/myEnve.txt
cp `echo $_base`/dynTheme.sh .DynTheme/dynTheme.sh

# Add dynTheme.sh cron job
path=`pwd`/.DynTheme/dynTheme.sh
{ crontab -l; echo "0 * * * * $path"; } | crontab -

# Add dynThemee.sh.desktop to .config/autorsart
cp `echo $_base`/dynTheme.sh.desktop .config/autostart/dynTheme.sh.desktop
