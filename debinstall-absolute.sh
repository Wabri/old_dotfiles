sudo apt update

# ---------------------------------------------------
# install i3-wm and some packages
sudo apt install i3-wm i3 i3blocks i3-wm xinput feh gnome-screenshot rofi
sudo apt install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo apt install xclip transmission thunar redshift-gtk rxvt-unicode-256color
sudo apt install faba-icon-theme gnome-themes-standard arc-theme numix-gtk-theme numix-icon-theme fonts-font-awesome
sudo apt install tty-clock compton ranger lxappearance arandr wget screenfetch neofetch curl git docker firefox-esr evince
sudo apt install libxss1 libappindicator1 libindicator7 wmctrl build-essential checkinstall
# sudo apt install libc++1 ffmpeg obs-studio
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Yapi install
sudo apt install python3
git clone https://github.com/Wabri/YAPI.git
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# Atom installer
echo "ATOM INSTALL & CONFIGURE"
python yapi.py install atom
sudo apt install python-pip
sudo pip install pep8 autopep8 flake8 flake8-docstrings hacking
apm install linter linter-flake8 sort-lines highlight-line hyperclick seti-ui seti-syntax minimap autocomplete-python script linter-cpplint atom-beautify hey-pane
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull unibeautify/autopep8
sudo docker pull unibeautify/beautysh
sudo docker pull unibeautify/uncrustify
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "DISCORD INSTALL"
python yapi.py install discord
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "DROPBOX INSTALL"
python yapi.py install dropbox
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "JAVA JDK 11 INSTALL AND PATH SETUP"
python yapi.py install javaJdk11
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "LIGHT INSTALL"
python yapi.py install light
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "LIGHT INSTALL"
python yapi.py install nodeJs
sudo npm install gtop
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "NVIDIADRIVER INSTALL"
python yapi.py install nvidiaDriver
sudo npm install gtop
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "PLAYERCTL INSTALL"
python yapi.py install playerctl
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "RAMBOX INSTALL"
python yapi.py install rambox
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "SKYPE INSTALL"
python yapi.py install skype
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "STEAM INSTALL"
python yapi.py install steam
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
echo "VIRTUALBOX INSTALL"
python yapi.py install virtualbox
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

cp -r dotfiles/.atom/ ~/

cp dotfiles/.gtkrc-2.0 $HOME/
cd ~
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
sudo apt upgrade --fix-broken

sudo rm -r dotfiles/
