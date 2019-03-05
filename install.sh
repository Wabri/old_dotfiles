sudo apt install i3 feh vim gvim pulseaudio ranger xinput compton redshift-gtk firefox lxappearance arandr

mkdir ~/git
cd ~/git

git clone https://github.com/Wabri/dotfiles.git dotfiles

cd dotfiles

cp -r . ~/

rm ~/install.sh
rm ~/README.md
rm ~/update_dotfiles.sh
