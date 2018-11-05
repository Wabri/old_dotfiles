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
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/atom_installer.sh
sudo chmod +x atom_installer.sh
./atom_installer.sh
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
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/discord_installer.sh
sudo chmod +x discord_installer.sh
./discord_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Dropbox
echo "DROPBOX INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/dropbox_installer.sh
sudo chmod +x dropbox_installer.sh
./dropbox_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# EclipseInstaller
echo "ECLIPSE INSTALLER INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/eclipseInstaller_installer.sh
sudo chmod +x eclipseInstaller_installer.sh
./eclipseInstaller_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GitKraken
# echo "GITKRAKEN INSTALLER"
# wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/gitkraken_installer.sh
# sudo chmod +x gitkraken_installer.sh
# ./gitkraken_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GoogleChrome
echo "GOOGLE CROME INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/googleChrome_installer.sh
sudo chmod +x googleChrome_installer.sh
./googleChrome_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Java jdk 11
echo "JAVA JDK 11 INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/javaJdk11_installer.sh
sudo chmod +x javaJdk11_installer.sh
./javaJdk11_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Light
echo "LIGHT INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/light_installer.sh
sudo chmod +x light_installer.sh
./light_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Node + Gtop
echo "NODEJS INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/nodeJs.sh
sudo chmod +x nodeJs.sh
./nodeJs.sh
sudo npm install gtop -g
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Nvidia Driver
echo "NVIDIA DRIVER INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/nvidiaDriver_installer.sh
sudo chmod +x nvidiaDriver_installer.sh
./nvidiaDriver_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Oh-My-Zsh
# echo "OH-MY-ZSH INSTALLER"
# wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/oh-my-zsh_installer.sh
# sudo chmod +x oh-my-zsh_installer.sh
# ./oh-my-zsh_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Playerctl
echo "PLAYERCTL INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/playerctl_installer.sh
sudo chmod +x playerctl_installer.sh
./playerctl_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Rambox
echo "RAMBOX INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/rambox_installer.sh
sudo chmod +x rambox_installer.sh
./rambox_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Skype
echo "SKYPE INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/skype_installer.sh
sudo chmod +x skype_installer.sh
./skype_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Steam
echo "STEAM INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/steam_installer.sh
sudo chmod +x steam_installer.sh
./steam_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Virtualbox
echo "VIRTUALBOX INSTALLER"
wget https://raw.githubusercontent.com/Wabri/oh-my-installer/blob/master/oh-my-installer-script/virtualbox_installer.sh
sudo chmod +x virtualbox_installer.sh
./virtualbox_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
sudo apt upgrade --fix-broken

rm -r *.sh

sudo rm -r dotfiles/
