cd $HOME

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

cp -r $HOME/dotfiles/i3/ $HOME/.config

cp -r $HOME/dotfiles/.urxvt $HOME/
cp $HOME/dotfiles/.Xresources $HOME/.Xresources
sudo update-alternatives --config x-terminal-emulator

sudo cp $HOME/dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify

sudo cp -r $HOME/dotfiles/lightdm/ /etc/

cp $HOME/dotfiles/.gtkrc-2.0 $HOME/

sudo rm -r dotfiles/
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# oh-my-installer
mkdir .oh-my-installer
cd .oh-my-installer
git clone https://github.com/Wabri/oh-my-installer.git
mv oh-my-installer/oh-my-installer-script .
sudo rm -r oh-my-installer
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Atom installer
echo "ATOM INSTALLER"
./atom_installer.sh
sudo apt install python-pip
sudo pip install pep8 autopep8 flake8 flake8-docstrings hacking
apm install linter linter-flake8 sort-lines highlight-line hyperclick seti-ui seti-syntax minimap autocomplete-python script linter-cpplint atom-beautify hey-pane
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull unibeautify/autopep8
sudo docker pull unibeautify/beautysh
sudo docker pull unibeautify/uncrustify
cp -r $HOME/dotfiles/.atom/ $HOME/
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Discord
echo "DISCORD INSTALLER"
./discord_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Dropbox
echo "DROPBOX INSTALLER"
./dropbox_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# EclipseInstaller
echo "ECLIPSE INSTALLER INSTALLER"
./eclipseInstaller_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GitKraken
# echo "GITKRAKEN INSTALLER"
# ./gitkraken_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# GoogleChrome
echo "GOOGLE CROME INSTALLER"
./googleChrome_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Java jdk 11
echo "JAVA JDK 11 INSTALLER"
./javaJdk11_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Light
echo "LIGHT INSTALLER"
./light_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Node + Gtop
echo "NODEJS INSTALLER"
./nodeJs.sh
sudo npm install gtop -g
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Nvidia Driver
echo "NVIDIA DRIVER INSTALLER"
./nvidiaDriver_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Oh-My-Zsh
# echo "OH-MY-ZSH INSTALLER"
# ./oh-my-zsh_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Playerctl
echo "PLAYERCTL INSTALLER"
./playerctl_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Rambox
echo "RAMBOX INSTALLER"
./rambox_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Skype
echo "SKYPE INSTALLER"
./skype_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Steam
echo "STEAM INSTALLER"
./steam_installer.sh
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Virtualbox
echo "VIRTUALBOX INSTALLER"
./virtualbox_installer
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
sudo apt upgrade --fix-broken

cd $HOME
