# Dotfiles

## I3blocks bar

![bar.png](resources/barOneMonitor.png)

## Screen i3

Here there are some terminal applications: gtop (left), tty-clock (right up), ranger (right middle), neofetch (right down)

![screen.png](resources/screenOneMonitor.png)

## Login Lightdm

I'm sorry for the quality of the picture, promise to create a new one better later:

![loginLightdm.jpg](resources/loginLightdm.jpg)

## Configuration

**Terminal**: rxvt-unicode-256color -> `sudo apt install rxvt-unicode-256color`

**Display manager**: Lightdm -> `sudo apt install lightdm lightdm-gtk-greeter`

**Terminal file manager**: ranger -> `sudo apt install ranger`

**Terminal system monitoring dashboard**: gtop -> [Github Repository](https://github.com/aksakalli/gtop)

**Browser**: Firefox Extended Support Release -> `sudo apt-get install firefox-esr`

**Workspace applications wrapper**: Rambox -> [community edition](https://rambox.pro)

**Main editor**: Atom -> <https://atom.io/>

**Desktop wallpaper**: feh -> `sudo apt-get install feh`

**Take screenshot**: gnome-screenshot -> `sudo apt-get install gnome-screenshot`

**Audio manager**: playerctl -> `sudo apt-get install playerctl`

**Applications launcher**: rofi -> `sudo apt-get install rofi`

**Theme switcher**: lxappearance -> `sudo apt-get install lxappearance`

**Monitor configurations**: arandr -> `sudo apt-get install arandr`

**Battery monitor**: i3-battery-popup -> [Github Repository](https://github.com/rjekker/i3-battery-popup)

**Brightness controller**: light -> [Github repository](https://github.com/haikarainen/light)

**Keyboard events catcher**: xev -> `sudo apt-get install xev`

I also use the fonts in the folder [.fonts](.fonts/).

You can find a lot of theme resources at <https://www.gnome-look.org/>, download .tar.gz and put in .icons or .fonts.

## Installation - Debian 9 stretch

First of all you need to be in the sudoers:

    $ usermod -aG sudo <username>

To install my configuration you have to simply run this command:

    wget https://raw.githubusercontent.com/Wabri/dotfiles/master/debinstall.sh ; ./debinstall.sh

I made this script that install and configure all for me:

-   i3-wm and dependencies
-   some necessary packages
-   skype, discord, atom
-   playerctl, rambox, dropbox, steam, light, google-chrome
-   eclipse installer
-   jdk-11 oracle version
-   atom packages
-   configurations of i3 and urxvt

## URxvt

The configuration is [.Xresources](.Xresources)
You can find all the scripts use in the folder [.urxvt](.urxvt/):

-   font-size
-   fullscreen
-   url-select

To create opacity effects i use compton, to install:

    sudo apt install compton

To use add this line to your i3 configuration:

    exec_always compton -f

## Atom configurations

![atomView.png](resources/atomView.png)

UI theme: seti ([seti-ui](https://atom.io/themes/seti-ui))

    apm install seti-ui

Syntax theme: seti ([seti-syntax](https://atom.io/themes/seti-syntax))

    apm install seti-syntax

Atom packages dependencies (for python):

    sudo apt install python-pip
    sudo -H pip install pep8 autopep8 flake8 flake8-docstrings

Atom theme:

    apm install seti-ui seti-syntax

Atom packages

1.  for python ide:


    apm install linter linter-flake8 sort-lines highlight-line autocomplete-python

2.  for cpp ide:


    apm instal linter-cpplint

3.  for markdown editor:


    apm install language-markdown

4.  for minimap, run scripts and beautify code:


    apm install minimap script atom-beautify

5.  other:


    apm install hey-pane

For the atom-beautify packages there are other dependencies:

1.  docker


    sudo curl -sSL https://get.docker.com/ | sh

2.  python beautify:


    sudo -H docker pull unibeautify/autopep8

3.  bash script beautify:


    sudo -H docker pull unibeautify/beautysh

4.  cpp and other beautify:


    sudo -H docker pull unibeautify/uncrustify

## Device info

OS: Debian GNU/Linux 9.5 (stretch) x86_64

Model: 20H1006JIX ThinkPad E470

Kernel: 4.9.0-8-amd64

Shell: bash 4.4.12

Resolution: 1920x1080

WM: i3

Theme: Arc-Dark [GTK2/3]

Icons: Faba [GTK2/3]

Terminal: x-terminal-emul

CPU: Intel i7-7500U (4) @ 3.5GHz

GPU: NVIDIA GeForce 940MX

Memory: \*\*\*\*MB / 7890MB
