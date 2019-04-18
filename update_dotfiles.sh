# Upgrade code config
cp ~/.config/Code/User/settings.json ./.config/Code/User/

# Update i3
cp -r ~/.config/i3/ ./.config/

# Update i3blocks
cp -r ~/.config/i3blocks/ ./.config/

# Update .Xresources
cp -r ~/.Xresources .
cp -r ~/.urxvt .

# Update .vimrc
cp ~/.vimrc .

# Update vifmrc
cp ~/.config/vifm/vifmrc .config/vifm/

# Update lightdm
cp -r /etc/lightdm/ .

rm -r lightdm/keys.conf lightdm/lightdm.conf lightdm/users.conf


