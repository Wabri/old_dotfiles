cd $HOME

sudo apt update

# install i3-wm and dependencies
sudo apt install i3-wm i3 i3blocks i3-wm lightdm xinput xclip compton lightdm-gtk-greeter lightdm-gtk-greeter-settings numix-gtk-theme numix-icon-theme feh gnome-screenshot rofi ranger lxappearance arandr libxss1 libappindicator1 libindicator7 thunar thunar-* redshift-gtk rxvt-unicode-256color wmctrl build-essential checkinstall wget faba-icon-theme gnome-themes-standard libc++1 ffmpeg obs-studio arc-theme fonts-font-awesome

# install NVIDIA GeForce 940MX driver
sudo add-apt-repository "deb http://httpredir.debian.org/debian/ stretch main contrib non-free"
sudo apt update
sudo apt install linux-headers-$(uname -r|sed 's/[^-]*-[^-]*-//') nvidia-driver
lspci -k | grep -EA3 'VGA|3D|Display'
sudo apt install bumblebee-nvidia

# install virtual box
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian stretch contrib"
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc
sudo apt-key add oracle_vbox_2016.asc
sudo apt-get update
sudo apt install virtualbox-5.2
rm oracle_vbox_2016.asc

# set urxvt and rofi theme
sudo update-alternatives --config x-terminal-emulator

# add architecture for steam installer
sudo dpkg --add-architecture i386
sudo apt install gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386
sudo apt update
sudo apt upgrade

cd Downloads

# Installer Discord
wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb
sudo dpkg -i discord.deb
rm -r discord.deb

# Installer Skype
wget -O skype.deb https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skype.deb
rm -r skype.deb

# installer playerctl
wget -O playerctl.deb https://github.com/acrisci/playerctl/releases/download/v0.6.1/playerctl-0.6.1_amd64.deb
sudo dpkg -i playerctl.deb
rm -r playerctl.deb

# installer rambox
wget -O rambox.deb https://github.com/ramboxapp/community-edition/releases/download/0.6.2/Rambox-0.6.2-linux-amd64.deb
sudo dpkg -i rambox.deb
rm -r rambox.deb

#installer dropbox
wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
sudo dpkg -i dropbox.deb
rm -r dropbox.deb
dropbox start -i

#installer steam
wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb
sudo gdebi steam.deb
rm -r steam.deb

# Installer light
wget https://github.com/haikarainen/light/releases/download/v1.2/light-1.2.tar.gz
sudo tar xvzf light-1.2.tar.gz
cd light-1.2/
./configure
make
sudo make install
cd ../
rm -r light-1.2 light-1.2.tar.gz

# Installer google-chrome
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome.deb
rm -r google-chrome.deb

sudo apt upgrade --fix-broken

cd $HOME

# Installer Eclipse
wget -O eclipseInst.tar.gz ftp.fau.de/eclipse/oomph/products/eclipse-inst-linux64.tar.gz
tar zxvf eclipseInst.tar.gz
sudo rm -r eclipseInst.tar.gz

# Installer Atom
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get install atom

# Java jdk setup
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

# Atom packages
sudo apt install python-pip
sudo pip install pep8 autopep8 flake8 flake8-docstrings
apm install linter linter-flake8 sort-lines highlight-line seti-ui seti-syntax minimap autocomplete-python script linter-cpplint atom-beautify language-gfm hey-pane
sudo curl -sSL https://get.docker.com/ | sh
sudo docker pull unibeautify/autopep8
sudo docker pull unibeautify/beautysh
sudo docker pull unibeautify/uncrustify

# Configuration setup
git clone https://github.com/Wabri/dotfiles.git

mkdir .config/i3
mkdir .fonts
cp -r $HOME/dotfiles/i3/ $HOME/.config
cp -r $HOME/dotfiles/.urxvt $HOME/
cp -r $HOME/dotfiles/.fonts/ $HOME/
sudo cp $HOME/dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify
cp $HOME/dotfiles/.Xresources $HOME/.Xresources
xrdb ~/.Xresources
cp -r $HOME/dotfiles/.atom/ $HOME/
sudo cp -r $HOME/dotfiles/lightdm/ /etc/

sudo rm -r dotfiles/
