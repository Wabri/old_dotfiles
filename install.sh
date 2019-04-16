sudo apt install i3 feh scrot thunar rxvt-unicode-256color vim vim-gtk3 vifm pulseaudio xinput compton redshift-gtk firefox lxappearance arandr zathura rofi numix-gtk-theme numix-icon-theme blackbird-gtk-theme lightdm lightdm-gtk-greeter zsh

mkdir -p ~/git
mkdir -p ~/Screenshoots

# Yapi installer
cd ~/git
git clone https://github.com/YetAnotherPackageInstaller/YAPI.git
cd YAPI
python3 install.py --lang=en
sh yapi.sh install playerctl
sh yapi.sh install telegram
sh yapi.sh install rambox
sh yapi.sh install code
sh yapi.sh install light
sh yapi.sh install spotify
sh yapi.sh install dropbox
sh yapi.sh install notable
sh yapi.sh install jdk11
sh yapi.sh install node
sh yapi.sh install i3gaps
sh yapi.sh install steam
sh yapi.sh install oh-my-zsh
sh yapi.sh install mailspring
sh yapi.sh install nvidiaDriver
cd ~/git

# Other packages
sudo npm install gtop -g
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# dotfiles installer
cd ~/git
git clone https://github.com/Wabri/dotfiles.git dotfiles
cd dotfiles
cp -r . ~/
sudo rm -r .git/
rm ~/install.sh
rm ~/README.md
rm ~/update_dotfiles.sh
rm ~/.config/Code/install_extension.sh
rm -r ~/lightdm
sudo cp -r lightdm /etc/
cd ~/git

sudo update-alternatives --config editor

# ZSH plugin
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
