# Upgrade code config
cp -r ~/.config/Code/User/settings.json home/.config/Code/User/
code --list-extensions | xargs -L 1 echo code --install-extension > ./home/.config/Code/install_extension.sh

# Update i3
cp -r ~/.config/i3/ home/.config/

# Update rofi
cp -r ~/.config/rofi/ home/.config/

# Update polybar
cp -r ~/.config/polybar/ home/.config/

# Update i3battery
cp -r ~/.config/i3battery home/.config/

# Update .Xresources
cp -r ~/.Xresources home/
cp -r ~/.urxvt home/

# Update .vimrc
cp ~/.vimrc home/

# Update vifmrc
cp -r ~/.config/vifm/vifmrc home/.config/vifm/
cp -r ~/.config/vifm/scripts home/.config/vifm/
cp -r ~/.config/vifm/colors home/.config/vifm/

# Update lightdm
cp -r /etc/lightdm/ .
rm -r lightdm/keys.conf lightdm/lightdm.conf lightdm/users.conf

