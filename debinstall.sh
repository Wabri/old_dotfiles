cd $HOME

sudo apt update

sudo apt install i3-wm i3 i3blocks i3lock-fancy i3-wm feh gnome-screenshot rofi lxappearance arandr snap flashplugin-installer libxss1 libappindicator1 libindicator7 thunar redshift-gtk franz

sudo snap install skype

sudo snap install discord

sudo snap install atom --classic

sudo dpkg --add-architecture i386

sudo apt install wget gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386

sudo apt update

sudo apt upgrade

cd Downloads

wget -O playerctl.deb https://github.com/acrisci/playerctl/releases/download/v0.6.1/playerctl-0.6.1_amd64.deb

sudo dpkg -i playerctl.deb

rm -r playerctl.deb

wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb

sudo dpkg -i dropbox.deb

rm -r dropbox.deb

wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb

sudo gdebi steam.deb

rm -r steam.deb

wget -O light.deb https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb

sudo dpkg -i light.deb

rm -r light.deb

wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome.deb

rm -r google-chrome.deb

sudo apt install --fix-broken

cd $HOME

sudo rm -r dotfiles/

git clone https://github.com/Wabri/dotfiles.git

mkdir .config/i3

mkdir .fonts

cp $HOME/dotfiles/i3/* $HOME/.config/i3/

cp -r $HOME/dotfiles/.fonts/ $HOME/.fonts/

cp $HOME/dotfiles/desktopImage/desktop.jpg $HOME/.config/i3/desktop.jpg

cp $HOME/dotfiles/scripts/batteryPopUp/* $HOME/.config/i3/

sudo cp $HOME/dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify

sudo rm -r dotfiles/
