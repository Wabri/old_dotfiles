cp -r $HOME/.config/i3 $HOME/git/dotfiles/
rm $HOME/git/dotfiles/i3/batteryWarning.ogg $HOME/git/dotfiles/i3/i3-battery-popup
cp $HOME/.Xresources $HOME/git/dotfiles/
cp -r $HOME/.urxvt/ $HOME/git/dotfiles/
cp -r /etc/lightdm $HOME/git/dotfiles/
rm $HOME/git/dotfiles/lightdm/lightdm-kde-greeter.conf $HOME/git/dotfiles/lightdm/.lightdm.conf.swp
git status
