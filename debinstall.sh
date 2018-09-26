cd $HOME

sudo apt update

sudo apt install i3-wm i3 i3blocks i3lock-fancy i3-wm feh gnome-screenshot rofi lxappearance arandr snap flashplugin-installer libxss1 libappindicator1 libindicator7 thunar redshift-gtk

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

wget -O franz.deb https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb

sudo dpkg -i franz.deb

rm -r franz.deb

wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome.deb

rm -r google-chrome.deb

sudo apt --fix-broken install

cd $HOME

git clone https://github.com/Wabri/dotfiles.git

cp dotfiles/i3/* $HOME/.config/i3/

cp -r dotfiles/.fonts/ $HOME/.fonts/

cp dotfiles/desktopImage/desktop.jpg $HOME/.config/i3/desktop.jpg

cp dotfiles/scripts/batteryPopUp/* $HOME/.config/i3/

sudo cp dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify

rm -r dotfiles/
