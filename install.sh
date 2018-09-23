cd $HOME

sudo apt update

sudo apt install i3 i3blocks i3lock-fancy i3-wm xev feh gnome-screenshot playerctl rofi lxappearance arandr atom dropbox snap flashplugin-installer libxss1 libappindicator1 libindicator7

sudo snap install skype --classic

sudo dpkg --add-architecture i386

sudo apt install wget gdebi-core libgl1-mesa-dri:i386 libgl1-mesa-glx:i386

sudo apt update

cd Downloads

wget -O steam.deb http://media.steampowered.com/client/installer/steam.deb

sudo gdebi steam.deb

wget -O light.deb https://github.com/haikarainen/light/releases/download/v1.2/light_1.2_amd64.deb

sudo dpkg -i light.deb

wget -O franz.deb https://github.com/meetfranz/franz/releases/download/v5.0.0-beta.18/franz_5.0.0-beta.18_amd64.deb

sudo dpkg -i franz.deb

wget -O discord.deb https://discordapp.com/api/download?platform=linux&format=deb

sudo dpkg -i discord.deb

wget -O google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome.deb

cd $HOME

mkdir git

cd git

git clone https://github.com/Wabri/dotfiles.git

cp dotfiles/i3/* $HOME/.config/i3/

cp -r dotfiles/.fonts/ $HOME/.fonts/

cp dotfiles/desktopImage/desktop.jpg $HOME/.config/i3/desktop.jpg

cp dotfiles/scripts/batteryPopUp/* $HOME/.config/i3/

sudo cp dotfiles/scripts/spotifyWithFirefox/spotify /usr/local/bin/spotify

rm -r dotfiles/

cd $HOME

curl -s "https://get.sdkman.io" | bash

source "$HOME/.sdkman/bin/sdkman-init.sh"

sdk install java 10.0.2-oracle

sudo ln -s $HOME/.sdkman/candidates/java/current /usr/local/java

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/bin/java" 1

sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/bin/javac" 1

sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/bin/javaws" 1

sudo update-alternatives --set java /usr/local/java/java

sudo update-alternatives --set javac /usr/local/java/javac

sudo update-alternatives --set javaws /usr/local/java/javaws

sudo nano /etc/profile

source /etc/profile

sdk install gradle 4.10
