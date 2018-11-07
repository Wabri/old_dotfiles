sudo apt update

# ---------------------------------------------------
# install i3-wm and some packages
sudo apt install i3-wm i3 i3blocks i3-wm xinput feh gnome-screenshot rofi
sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo apt install xclip transmission thunar redshift-gtk rxvt-unicode-256color
sudo apt install faba-icon-theme gnome-themes-standard arc-theme numix-gtk-theme numix-icon-theme fonts-font-awesome
sudo apt install tty-clock compton ranger lxappearance arandr wget screenfetch neofetch curl git docker firefox-esr evince
sudo apt install libxss1 libappindicator1 libindicator7 wmctrl build-essential checkinstall
sudo apt install libc++1 ffmpeg obs-studio
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Configuration setup
git clone https://github.com/Wabri/dotfiles.git

mkdir -p .config/i3

cp -r dotfiles/i3/ $HOME/.config

cp -r dotfiles/.urxvt $HOME/
cp dotfiles/.Xresources $HOME/.Xresources
sudo update-alternatives --config x-terminal-emulator

sudo cp dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify

sudo cp -r dotfiles/lightdm/ /etc/

cp dotfiles/.gtkrc-2.0 $HOME/
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Atom installer
echo "ATOM INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/atom.sh | sudo bash -
sudo apt install python-pip
sudo pip install pep8 autopep8 flake8 flake8-docstrings hacking
apm install linter linter-flake8 sort-lines highlight-line hyperclick seti-ui seti-syntax minimap autocomplete-python script linter-cpplint atom-beautify hey-pane
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull unibeautify/autopep8
sudo docker pull unibeautify/beautysh
sudo docker pull unibeautify/uncrustify
cp -r dotfiles/.atom/ $HOME/
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Discord
echo "DISCORD INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/discord.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Dropbox
echo "DROPBOX INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/dropbox.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# EclipseInstaller
echo "ECLIPSE INSTALLER INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/eclipseInstaller.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GitKraken
# echo "GITKRAKEN INSTALLER"
# curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/gitKraken.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GoogleChrome
echo "GOOGLE CROME INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/googleChrome.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Java jdk 11
echo "JAVA JDK 11 INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/javaJdk11.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Light
echo "LIGHT INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/light.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Node + Gtop
echo "NODEJS INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/nodeJs.sh | sudo bash -
sudo npm install gtop -g
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Nvidia Driver
echo "NVIDIA DRIVER INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/nvidiaDriver.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Oh-My-Zsh
# echo "OH-MY-ZSH INSTALLER"
# curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/oh-my-zsh.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Playerctl
echo "PLAYERCTL INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/playerctl.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Rambox
echo "RAMBOX INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/rambox.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Skype
echo "SKYPE INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/skype.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Steam
echo "STEAM INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/steam.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Virtualbox
echo "VIRTUALBOX INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/script/virtualbox.sh | sudo bash -
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
sudo apt upgrade --fix-broken

rm -r *.sh

sudo rm -r dotfiles/
