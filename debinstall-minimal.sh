echo 'MINIMAL DEPENDENCIES SYSTEM INSTALL'
echo ''

sudo apt install i3-wm i3 i3blocks i3-wm lightdm xinput xclip compton lightdm-gtk-greeter lightdm-gtk-greeter-settings numix-gtk-theme numix-icon-theme feh gnome-screenshot rofi lxappearance arandr rxvt-unicode-256color build-essential checkinstall libc++1 arc-theme fonts-font-awesome screenfetch neofetch curl git firefox-esr

# terminal selection
echo 'SELECT TERMINAL'
sudo update-alternatives --config x-terminal-emulator

# installer playerctl
echo 'AUDIO CONTROLLER INSTALL'
wget -O playerctl.deb https://github.com/acrisci/playerctl/releases/download/v0.6.1/playerctl-0.6.1_amd64.deb
sudo dpkg -i playerctl.deb
rm -r playerctl.deb

# Installer light
echo 'BRIGHTNESS CONTROLLER INSTALL'
wget https://github.com/haikarainen/light/releases/download/v1.2/light-1.2.tar.gz
sudo tar xvzf light-1.2.tar.gz
cd light-1.2/
./configure
make
sudo make install
cd ../
rm -r light-1.2 light-1.2.tar.gz

# Java jdk setup
echo 'JAVA JDK INSTALL'
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" -O jdk-11.tar.gz download.oracle.com/otn-pub/java/jdk/11.0.1+13/90cf5d8f270a4347a95050320eef3fb7/jdk-11.0.1_linux-x64_bin.tar.gz
sudo mkdir -p /usr/local/java
tar xvzf jdk-11.tar.gz
sudo cp -r jdk-11.0.1/ /usr/local/java
sudo rm -r jdk-11.0.1 jdk-11.tar.gz
echo '' | sudo tee -a /etc/profile
echo '# JAVA JDK' | sudo tee -a /etc/profile
echo 'JAVA_HOME=/usr/local/java/jdk-11' | sudo tee -a /etc/profile
echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin' | sudo tee -a /etc/profile
echo 'export JAVA_HOME' | sudo tee -a /etc/profile
echo 'export PATH' | sudo tee -a /etc/profile
echo '' | sudo tee -a /etc/profile
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk-11.0.1/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk-11.0.1/bin/javac" 1
sudo update-alternatives --set java /usr/local/java/jdk-11.0.1/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk-11.0.1/bin/javac

# Configuration setup
echo 'I3WM CONFIGURATION SETUP'

git clone https://github.com/Wabri/dotfiles.git

mkdir .config
mkdir .config/i4
mkdir .fonts
cp -r $HOME/dotfiles/i3/ $HOME/.config
cp -r $HOME/dotfiles/.urxvt $HOME/
cp -r $HOME/dotfiles/.fonts/ $HOME/
sudo cp $HOME/dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify
cp $HOME/dotfiles/.Xresources $HOME/.Xresources
xrdb ~/.Xresources
cp -r $HOME/dotfiles/.atom/ $HOME/
sudo cp -r $HOME/dotfiles/lightdm/ /etc/
cp $HOME/dotfiles/.gtkrc-2.0 $HOME/

sudo rm -r dotfiles/
