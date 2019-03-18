# Upgrade code config
cp ~/.config/Code/User/keybindings.json ./.config/Code/User/
cp ~/.config/Code/User/settings.json ./.config/Code/User/
code --list-extensions | xargs -L 1 echo code --install-extension > ./.config/Code/install_extension.sh

# Update i3
# cp ~/.config/i3/ ./.config/i3/

# Update gtk
# cp ~/.config/gtk-3.0/settings.ini

# Update i3blocks
# cp ~/.config/i3blocks/ ./.config/i3blocks/

# Update .Xresources
# cp ~/.Xresources .
# cp ~/.urxvt .

# Update .vimrc
# cp ~/.vimrc .

# Update lightdm
# cp /etc/lightdm/ .
