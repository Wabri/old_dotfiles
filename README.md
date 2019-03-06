# Dotfiles

###### I'm in an early stage of config, you must wait for the preview

## Some details
* OS: Debian 9
* WM: I3
* Terminal: rxvt-unicode (URxvt)
* File Manager: Thunar for GUI, Ranger for terminal
* Launcher: Dmenu
* Editor: Vim, VSCode
* Browser: Firefox

## I3

### Preview

### Keyboard
I use `super`/`Windows key` as my main mod key.

* `super + enter` -> new terminal
* `super + d` -> launch dmenu
* `super + shift + q` -> close container
* `super + [1-0]` -> change workspace
* `super + shift + [1-0]` -> move container to workspace
* `super + f` -> toggle fullscreen
* `super + h/l` -> move right/left container view
* `super + j/k` -> move down/up container view
* `super + shift + h/j/k/l` -> move container left/down/up/right
* `super + p` -> system control mode (poweroff/reboot/logout)
* `super + r` -> resize mode
* `print` -> grab a screenshoot of the entire screen
* `super + print` -> select area to grab to screenshot

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
* `Ctrl+p` -> open the markdown preview on firefox
* `Ctrl+n` -> open the nerd tree
* `Ctrl+c` -> copy to the clipboard
* `Ctrl+v` -> paste from the clipboard

### Plugin
###### I'm using [plugged](https://github.com/junegunn/vim-plug)
* [i3-vim-syntax](github.com/potatoesMaster/i3-vim-syntax)
* [vim-sensible](github.com/tpope/vim-sensible)
* [jedi-vim](github.com/davidhalter/jedi-vim)
* [gojo.vim](github.com/junegunn/goyo.vim)
* [vim-markdown-preview](github.com/JamshedVesuna/vim-markdown-preview)
* [nerdtree](github.com/scrooloose/nerdtree)
* [nerdtree-git-plugin](github.com/Xuyuanp/nerdtree-get-plugin)

## VSCode

### Preview

### Keyboard
###### To see the keyboard setup you can read the [keybinding.json](.config/Code/User/keybindings.json).
* All the Vim keybinding are set up with the VSCodeVim plugin
* `Ctrl+ì` -> open terminal
* `F2` -> action refactor
* `Alt+Shift+r`-> rename file and editor rename action
* `Ctrl+Shift+b` -> format document
* `Ctrl+Alt+k` -> move lines up in editor
* `Ctrl+Alt+j` -> move lines down in editor
* `Ctrl+Shift+7`-> add and remove comment lines
* `Ctrl+Shift+m` -> maximize panel
* `Ctrl+Shift+n` -> new folder

### Plugin

* [vscodevim.vim](https://github.com/VSCodeVim/Vim)
* [bierner.markdown-preview-github-styles](https://github.com/mjbvz/vscode-github-markdown-preview-style)
* [ms-python.python](https://github.com/Microsoft/vscode-python)
* [ms-vscode.cpptools](https://github.com/Microsoft/vscode-cpptools)
* [ms-vscode.csharp](https://github.com/OmniSharp/omnisharp-vscode)
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
