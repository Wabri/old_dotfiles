# Dotfiles

## Some details
* OS: Debian 9
* WM: I3
* Terminal: rxvt-unicode (URxvt)
* File Manager: vifm for terminal
* Launcher: Rofi
* Editor: Vim, VSCode
* Browser: Firefox

## Index

0. [I3wm](#i3)
1. [I3Blocks](#i3blocks)
2. [Urxvt](#urxvt)
3. [Vim](#vim)
4. [Vifm](#vifm)
5. [Visual Studio Code](#vscode)
6. [Install](#install)

## I3

### Preview

### Keyboard
I use the windows key as my main mod key.

* `super + enter` -> new terminal
* `super + d` -> launch dmenu
* `super + shift + q` -> close container
* `super + [1-0]` -> change workspace
* `super + shift + [1-0]` -> move container to workspace
* `super + f` -> toggle fullscreen
* `super + h/l` -> move right/left container view
* `super + j/k` -> move down/up container view
* `super + shift + h/j/k/l` -> move container left/down/up/right
* `super + p` -> system control mode
* `super + r` -> resize mode
* `print` -> grab a screenshoot of the entire screen
* `super + print` -> select area to grab to screenshot
* `XF86Tools` -> open with vim the config file
* `XF86Display` -> open arandr for graphical management of monitor view
* `super + backslash` -> open vifm in the home directory
* `super + Shift + comma` -> create a new file and edit with vim
* `super + Shift + ograve` -> open mailspring mail client
* `alt + Shift + 1` -> open notable
* `alt + Shift + 2` -> open firefox browser
* `alt + Shift + 3` -> open Visual Studio Code
* `alt + Shift + 4` -> open chat
* `alt + Shift + 5` -> open spotify


## I3Blocks

### Preview

### Blocks
* mediaplayer
* memory
* cpu_usage
* temperature
* disk
* iface
* essid
* bandwidth
* volume
* battery
* time

## Urxvt

## Preview

### Keyboard
* `Ctrl+k` -> increase the font size
* `Ctrl+j` -> decrease the font size
* `Ctrl+Shift+c` -> copy to the clipboard
* `Ctrl+Shift+v` -> paste from the clipboard

### Plugin
* [font-size](https://github.com/johntyree/urxvt-perls)
* [url-select](https://github.com/johntyree/urxvt-perls)

## Vim

### Preview

### Keyboard
###### To abilitate the copy and paste to clipboard you need to install vim-gnome
* `Space+f` -> abilitate the goyo text viewer
* `Ctrl+m` -> open the markdown preview on firefox
* `Ctrl+n` -> open the nerd tree
* `<F2>` -> copy to the clipboard
* `<F3>` -> paste from the clipboard

### Plugin
###### I'm using [plugged](https://github.com/junegunn/vim-plug)
* [i3-vim-syntax](github.com/potatoesMaster/i3-vim-syntax)
* [vim-sensible](github.com/tpope/vim-sensible)
* [jedi-vim](github.com/davidhalter/jedi-vim)
* [gojo.vim](github.com/junegunn/goyo.vim)
* [vim-markdown-preview](github.com/JamshedVesuna/vim-markdown-preview)
* [nerdtree](github.com/scrooloose/nerdtree)
* [nerdtree-git-plugin](github.com/Xuyuanp/nerdtree-get-plugin)


## Vifm

### Preview

### Keyboard
To see all of the keyboard shortcut go to cheatsheets: [vifm.info/cheatsheets.shtml](https://vifm.info/cheatsheets.shtml):
![vifm](https://vifm.info/cheatsheets/v0.10/vifm-v0.10-builtin-normal.png)


## VSCode

### Preview

### Keyboard
###### To see the keyboard setup you can read the [keybinding.json](.config/Code/User/keybindings.json).
* All the Vim keybinding are set up with the VSCodeVim plugin
* `Ctrl+ì` -> open terminal
* `F2` -> action refactor
* `Alt+Shift+r`-> rename file and editor rename action
* `Ctrl+Shift+b` -> format document
* `Alt+k` -> move lines up in editor
* `Alt+j` -> move lines down in editor
* `Ctrl+Shift+7`-> add and remove comment lines
* `Ctrl+Shift+m` -> maximize panel
* `Ctrl+Shift+n` -> new folder
* `Ctrl+Shift+d` -> delete lines
* `Ctrl+Shift+l` -> move editor to right
* `Ctrl+Shift+k` -> move editor to above
* `Ctrl+Shift+j` -> move editor to below
* `Ctrl+Shift+h` -> move editor to left
* `Alt+Shift+h` -> focus left group (move view to left)
* `Alt+Shift+j` -> focus below group (move view to below)
* `Alt+Shift+k` -> focus above group (move view to above)
* `Alt+Shift+l` -> focus right group (move view to right)
* `Ctrl+Alt+j` -> insert cursor below
* `Ctrl+Alt+k` -> insert cursor above
* `Ctrl+Shift+[Comma]` -> open global keybindings

### Plugin

* [vscodevim.vim](https://github.com/VSCodeVim/Vim)
* [bierner.markdown-preview-github-styles](https://github.com/mjbvz/vscode-github-markdown-preview-style)
* [ms-python.python](https://github.com/Microsoft/vscode-python)
* [shakram02.bash-beautify](https://github.com/shakram02/bash_beautify)
* [VisualStudioExptTeam.vscodeintellicode](https://github.com/MicrosoftDocs/intellicode)
* [redhat.java](https://github.com/redhat-developer/vscode-java)
* [caolin.java-run](https://github.com/NeverCL/vscode-java-run)
* [vscjava.vscode-java-debug](https://github.com/Microsoft/vscode-java-debug)
* [vscjava.vscode-java-dependency](https://github.com/Microsoft/vscode-java-dependency)
* [vscjava.vscode-java-pack](https://github.com/Microsoft/vscode-java-pack)
* [vscjava.vscode-java-test](https://github.com/Microsoft/vscode-java-test)
* [vscjava.vscode-maven](https://github.com/Microsoft/vscode-maven)

To install this plugins you can use the script [install_extension.sh](.config/Code/install_extension.sh)

## Install

###### This install is tested only for Debian 9

First of all you need to be in the sudoers:

    $ usermod -aG sudo <username>

Then you must have wget install, you can install by apt:

    $ apt install wget

To install all the configuration you have to use the install bash file and then run it:

	sh -c "$(wget https://raw.githubusercontent.com/Wabri/dotfiles/master/install.sh -O -)"

You can see the contents of this file here [install.sh](install.sh)

