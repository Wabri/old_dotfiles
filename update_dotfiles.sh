# Upgrade code config
cp ~/.config/Code/User/keybindings.json ./.config/Code/User/keybindings.json
code --list-extensions | xargs -L 1 echo code --install-extension > ./.config/Code/install_extension.sh

# Upgrade i3 config
# cp ~/.config/i3/ ./.config/i3/

# Upgrade .Xresources
# cp ~/.Xresources . 
# cp ~/.urxvt/ext/* ./urxvt/ext/

# Upgrade .vimrc
# cp ~/.vimrc .
