cd $HOME

sudo apt update

# install i3-wm and dependencies
sudo apt install i3-wm i3 i3blocks i3lock-fancy i3-wm feh gnome-screenshot rofi ranger lxappearance arandr snap flashplugin-installer libxss1 libappindicator1 libindicator7 thunar redshift-gtk rxvt wmctrl build-essential checkinstall wget

# set urxvt
sudo update-alternatives --config x-terminal-emulator
rofi-theme-selector

# install snap packages
sudo snap install skype
sudo snap install discord
sudo snap install atom --classic

# add architecture for steam installer
sudo dpkg --add-architecture i386
sudo apt install gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386
sudo apt update
sudo apt upgrade

cd Downloads

# installer playerctl
wget -O playerctl.deb https://github.com/acrisci/playerctl/releases/download/v0.6.1/playerctl-0.6.1_amd64.deb
sudo dpkg -i playerctl.deb
rm -r playerctl.deb

# installer rambox
wget -O rambox.tar.gz https://getrambox.herokuapp.com/download/linux_64?filetype=deb
tar zxvf rambox.tar.gz Rambox
rm -r rambox.tar.gz
mv Rambox* $HOME/Rambox
sudo ln -s $HOME/Rambox/rambox /usr/local/bin/rambox

#installer dropbox
wget -O dropbox.deb https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb
sudo dpkg -i dropbox.deb
rm -r dropbox.deb

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
sudo make instal
cd ../
rm -r light-1.2 light-1.2.tar.gz

# Installer google-chrome
wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome.deb
rm -r google-chrome.deb

sudo apt install --fix-broken

cd $HOME

# Installer Eclipse
wget -O eclipseInst.tar.gz ftp.fau.de/eclipse/oomph/products/eclipse-inst-linux64.tar.gz
sudo tar zxvf eclipseInst.tar.gz
sudo rm -r eclipseInst.tar.gz

sudo rm -r dotfiles/

# Java jdk setup
wget -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/11+28/55eed80b163941c8885ad9298e6d786a/jdk-11_linux-x64_bin.tar.gz
sudo mkdir -p /usr/local/java
tar xvzf jdk-11_linux-x64_bin.tar.gz
sudo cp -r jdk-11 /usr/local/java
rm -r jdk-11 jdk-11_linux-x64_bin.tar.gz
echo '' | sudo tee -a /etc/profile
echo '# JAVA JDK' | sudo tee -a /etc/profile
echo 'JAVA_HOME=/usr/local/java/jdk-11' | sudo tee -a /etc/profile
echo 'PATH=$PATH:$HOME/bin:$JAVA_HOME/bin' | sudo tee -a /etc/profile
echo 'export JAVA_HOME' | sudo tee -a /etc/profile
echo 'export PATH' | sudo tee -a /etc/profile
echo '' | sudo tee -a /etc/profile
sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk-11/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk-11/bin/javac" 1
sudo update-alternatives --set java /usr/local/java/jdk-11/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk-11/bin/javac

# Atom packages
sudo -H pip install pep8 autopep8 flake8 flake8-docstrings
apm install linter
apm install linter-flake8
apm install sort-lines
apm install highlight-line
apm install seti-ui
apm install minimap
apm install autocomplete-python
apm install script

# Configuration setup
git clone https://github.com/Wabri/dotfiles.git

mkdir .config/i3
mkdir .fonts
cp $HOME/dotfiles/i3/* $HOME/.config/i3/
cp -r $HOME/dotfiles/.fonts/ $HOME/
cp $HOME/dotfiles/scripts/batteryPopUp/* $HOME/.config/i3/
sudo cp $HOME/dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify
cp $HOME/dotfiles/.Xresources $HOME/.Xresources
xrdb ~/.Xresources
cp $HOME/dotfiles/.atom $HOME/

sudo rm -r dotfiles/
