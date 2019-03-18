sudo apt install i3 feh scrot rxvt-unicode vim gvim vifm pulseaudio xinput compton redshift-gtk firefox lxappearance arandr zathura rofi numix-gtk-theme numix-icon-theme blackbird-gtk-theme lightdm lightdm-gtk-greeter zsh

mkdir -p ~/git
mkdir -p ~/Screenshoots

# Yapi installer
cd ~/git
git clone https://github.com/YetAnotherPackageInstaller/YAPI.git
cd YAPI
python3 install.py --lang=en
sh yapi.sh install playerctl
sh yapi.sh install telegram
sh yapi.sh install wavebox
sh yapi.sh install code
sh yapi.sh install light
sh yapi.sh install spotify
sh yapi.sh install dropbox
sh yapi.sh install notable
sh yapi.sh install jdk11
sh yapi.sh install node
sh yapi.sh install i3gaps
sh yapi.sh install nvidiaDriver
sh yapi.sh install steam
cd ~/git

# dotfiles installer
cd ~/git
git clone https://github.com/Wabri/dotfiles.git dotfiles
cd dotfiles
cp -r . ~/
rm ~/install.sh
rm ~/README.md
rm ~/update_dotfiles.sh
rm ~/.config/Code/install_extension.sh
rm -r ~/lightdm
sudo cp -r lightdm /etc/
cd ~/git

# Other packages
sudo npm install gtop -g
