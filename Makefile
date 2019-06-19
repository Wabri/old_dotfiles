base:
	echo '---------------------------------'
	echo '-------> Wabri dotfiles <--------'
	echo '---------------------------------'
	echo '-> Mantainer: Gabriele Puliti <--'
	echo 'URL: https://github.com/Wabri/dotfiles'

all: base i3_all lightdm zsh vifm urxvt vim remove_bip

i3_all: base i3 themes optional_pack
	echo '---------------------------------'
	echo '----> All I3 functionality <-----'
	echo '---------------------------------'
	sudo apt install redshift-gtk arandr
	sudo apt install firefox thunar zathura
	sudo apt install vlc gimp smplayer
	git clone https://github.com/Wabri/i3battery.git
	cd i3battery
	make all
	cd ..
	rm -rf i3battery
	cp -r ~/dotfiles/home/.config/i3battery ~/.config/

i3: yapi polybar albert base
	echo '---------------------------------'
	echo '-------> I3wm installer <--------'
	echo '---------------------------------'
	sudo apt install i3 scrot xinput pulseaudio feh compton
	sudo apt install xinput xev
	yapi install i3gaps
	yapi install playerctl
	yapi install light
	mkdir -p ~/git
	mkdir -p ~/Pictures
	cp -r ~/dotfiles/home/.config/i3 ~/.config/

rofi: base
	echo '---------------------------------'
	echo '-------> Rofi installer <--------'
	echo '---------------------------------'
	sudo apt install rofi
	cp -r ~/dotifles/home/.config/rofi ~/.config/

albert: base
	echo '---------------------------------'
	echo '------> Albert installer <-------'
	echo '---------------------------------'
	sudo su
	"This is the installer for debian 9, for other distros you can find the installation here:"
	"https://software.opensuse.org/download.html?project=home:manuelschneid3r&package=albert"
	echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/Debian_9.0/ /' > /etc/apt/sources.list.d/home:manuelschneid3r.list
	wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/Debian_9.0/Release.key -O Release.key
	apt-key add - < Release.key
	apt-get update
	apt-get install albert
	exit

optional_pack: yapi
	echo '---------------------------------'
	echo '--------> More packages <--------'
	echo '---------------------------------'
	yapi install telegram
	yapi install rambox
	yapi install spotify
	yapi install dropbox
	yapi install mailspring
	sudo apt install neofetch screenfetch
	yapi install node
	sudo npm install gtop -g

themes:
	echo '---------------------------------'
	echo '--------> More packages <--------'
	echo '---------------------------------'
	sudo apt install fonts-font-awesome fonts-powerline
	sudo apt install numix-gtk-theme numix-icon-theme
	git clone https://github.com/powerline/fonts.git --depth=1
	cd fonts
	./install.sh
	cd ..
	rm -rf fonts
	echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"

yapi:
	echo '---------------------------------'
	echo '-------> YAPI installer <--------'
	echo '---------------------------------'
	cd ~
	git clone https://github.com/YetAnotherPackageInstaller/YAPI.git
	cd YAPI
	python3 install.py --lang=en
	sudo ln -s ~/YAPI/yapi.sh /usr/bin/yapi

lightdm: base
	echo '---------------------------------'
	echo '----------> LightDM <------------'
	echo '---------------------------------'
	sudo apt install lightdm lightdm-gtk-greeter
	sudo cp -r ~/dotfiles/lightdm /etc/

zsh: yapi base
	echo '---------------------------------'
	echo '------------> ZSH <--------------'
	echo '---------------------------------'
	sudo apt install zsh
	yapi install oh-my-zsh
	git clone https://github.com/zsh-users/zsh-completions ~/.oh-my-zsh/custom/plugins/zsh-completions
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	sudo cp -r ~/dotfiles/home/.bashrc ~/
	sudo cp -r ~/dotfiles/home/.zshrc ~/
	sudo cp -r ~/dotfiles/home/.bashrc /root/
	sudo cp -r ~/dotfiles/home/.zshrc /root/

vifm: base
	echo '---------------------------------'
	echo '------------> VIFM <--------------'
	echo '---------------------------------'
	sudo apt install vifm
	sudo cp -r ~/dotfiles/home/.config/vifm ~/.config
	sudo cp -r ~/dotfiles/home/.config/vifm /root/.config/

vim: base
	echo '---------------------------------'
	echo '------------> VIM <--------------'
	echo '---------------------------------'
	sudo apt install vim vim-gtk3
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	sudo cp -r ~/dotfiles/home/.vimrc ~/
	sudo cp -r ~/dotfiles/home/.vimrc /root/

urxvt: base
	echo '---------------------------------'
	echo '-----------> Urxvt <-------------'
	echo '---------------------------------'
	sudo apt install rxvt-unicode-256color
	sudo cp -r ~/dotfiles/home/.Xresources ~/
	sudo cp -r ~/dotfiles/home/.urxvt ~/
	sudo cp -r ~/dotfiles/home/.Xresources /root/
	sudo cp -r ~/dotfiles/home/.urxvt /root/

polybar: base
	echo "--------------------------"
	echo "---- Polybar install -----"
	echo "--------------------------"
	sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
	sudo apt-get install libpulse-dev libjsoncpp-dev libnl-genl-3-dev libxcb-cursor-dev
	git clone --recursive https://github.com/jaagr/polybar
	cd polybar
	./build.sh
	cd ..
	rm -rf polybar
	cp -r ~/dotfiles/home/.config/polybar ~/.config

i3blocks: base
	echo "--------------------------"
	echo "---- Polybar install -----"
	echo "--------------------------"
	cp -r ~/dotfiles/home/.config/i3blocks ~/.config

code: base
	yapi install code
	cp -r ~/dotfiles/home/.config/code ~/.config/
	sh ~/dotfiles/home/.config/Code/install_extension.sh

remove_bip:
	echo "--------------------------"
	echo "---- Removing bip --------"
	echo "--------------------------"
	sudo mobprobe -r pcspkr
	sudo rmmod pcspkr
	echo "blacklist pcspkr" | sudo tee -a /etc/modprobe.d/blacklist


