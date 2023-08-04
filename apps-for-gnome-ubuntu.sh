#!/bin/bash
sudo apt update && sudo apt upgrade

# great clipboard
sudo apt install copyq

# copy output from terminal (command in ubuntu aliases)
sudo apt install xclip

sudo apt install neofetch
sudo apt install sqlitebrowser

# create creating a bootable USB flash drive
sudo apt install gnome-multi-writer

# gnome extensions
sudo apt install gnome-shell-extension-manager

# information about processes
sudo apt install htop

# discord with fullscreen streams on gnome
sudo apt install jq
webcord_type=_amd64.deb && wget -O '/home/todoshi/Downloads/webcord.deb' $(curl -s https://api.github.com/repos/SpacingBat3/WebCord/releases/latest | jq -r ".assets[] | select(.name | test(\"${webcord_type}\")) | .browser_download_url") && sudo dpkg -i ~/Downloads/webcord.deb && rm ~/Downloads/webcord.deb

sudo add-apt-repository multiverse && sudo apt install steam
sudo snap install telegram-desktop, code, chromium, gimp

# astronvim setup
sudo apt install python3-pip
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && cd
nvim_type=linux64.deb$ && wget -O ~/Downloads/nvim.deb $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r ".assets[] | select(.name | test(\"${nvim_type}\")) | .browser_download_url") && sudo dpkg -i ~/Downloads/nvim.deb && rm ~/Downloads/nvim.deb && mkdir -p ~/.config/nvim && git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync

