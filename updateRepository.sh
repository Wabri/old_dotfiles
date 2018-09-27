cp $HOME/.config/i3/* $HOME/git/dotfiles/i3/
rm $HOME/git/dotfiles/i3/batteryWarning.ogg $HOME/git/dotfiles/i3/i3-battery-popup $HOME/git/dotfiles/i3/desktop.jpg
cp $HOME/.config/i3/desktop.jpg $HOME/git/dotfiles/desktopImage/
cp $HOME/.Xresources $HOME/git/dotfiles/
cp -r $HOME/.urxvt/ $HOME/git/dotfiles/
cd $HOME/git/dotfiles
git status
git add *
git commit -m "update repository with updateRespository.sh"
git push origin master
