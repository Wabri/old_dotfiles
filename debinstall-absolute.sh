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
cd ~
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Atom installer
echo "ATOM INSTALLER"
curl -sL https://raw.githubusercontent.com/Wabri/YAPI/master/scripts/atom.sh | sudo bash -
sudo apt install python-pip
sudo pip install pep8 autopep8 flake8 flake8-docstrings hacking
apm install linter linter-flake8 sort-lines highlight-line hyperclick seti-ui seti-syntax minimap autocomplete-python script linter-cpplint atom-beautify hey-pane
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull unibeautify/autopep8
sudo docker pull unibeautify/beautysh
sudo docker pull unibeautify/uncrustify
cp -r dotfiles/.atom/ ~/
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
# ---------------------------------------------------
# Yapi install
sudo apt install python3
git clone https://github.com/Wabri/YAPI.git
cd YAPI
python3 yapi.py
# ---------------------------------------------------
echo "-----------------------------------------------"
echo " "
echo "-----------------------------------------------"
sudo apt upgrade --fix-broken

rm -r *.sh

sudo rm -r dotfiles/
