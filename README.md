# i3Configuration

file from config/.i3

this configuration of i3wm, use package:
- feh (for desktop wallpaper)
- gnome-screenshot (use to get screenshot)
- scrot (use in lock screen script)
- playerctl (increase & decrese the volume audio)
- rofi (a substitute of dmenu)
- lxappearance (i use to modify the theme, racommended https://github.com/horst3180/Arc-theme)
- arandr (to set monitor configuration)

In usefullScripts directory i put all my personal script that i use in my local machine (if you want to use you have to copy that to /usr/local/bin directory and change the permission to executable with the command sudo chmod +x name_of_file). In this directory i create:
- spotify -> to open a new windows of firefox with url: open.spotify.com (in i3 config file you can find a rule for spotify on firefox at line 142)
- updateI3Git -> shortcut to copy all of i3 configuration files to this repository folder

I also use the fonts in the folder .fonts, if you want to use that you have to copy directory .fonts in your home directory ($HOME)
(ps: you can find a lot of theme resources at https://www.gnome-look.org/ , download .tar.gz and put in .icons or .fonts)
