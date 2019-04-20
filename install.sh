sudo apt install i3 i3blocks
sudo apt install fonts-font-awesome fonts-powerline
sudo apt install feh scrot thunar
sudo apt install rxvt-unicode-256color vim vim-gtk3 vifm zsh
sudo apt install xinput
sudo apt install pulseaudio compton redshift-gtk
sudo apt install lxappearance arandr zathura rofi
sudo apt install numix-gtk-theme numix-icon-theme
sudo apt install lightdm lightdm-gtk-greeter
sudo apt install firefox
sudo apt install neofetch screenfetch
sudo apt install vlc gimp smplayer

sudo update-alternatives --config x-terminal-emulator

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
sh yapi.sh install node
sh yapi.sh install i3gaps
sh yapi.sh install oh-my-zsh
sh yapi.sh install mailspring
cd ~/git

# Other packages
sudo npm install gtop -g

# dotfiles installer
cd ~/git
git clone https://github.com/Wabri/dotfiles.git dotfiles
cd dotfiles
cp -r home/. ~/
sudo cp -r lightdm /etc/
cd ~/git

# Setup home
mkdir -p ~/git
mkdir -p ~/Screenshots

# Powerline fonts setup
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
./install.sh
cd ..
rm -rf fonts
echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"

# Vim plugin installer
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Zsh plugin
git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install polybar
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
sudo libpulse-dev libjsoncpp-dev libnl-genl-3-dev libxcb-cursor-dev
git clone --recursive https://github.com/jaagr/polybar
cd polybar
sh build.sh

# remove all bip bip
sudo mobprobe -r pcspkr
sudo rmmod pcspkr
echo "blacklist pcspkr" | sudo tee -a /etc/modprobe.d/blacklist

