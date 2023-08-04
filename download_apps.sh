#!/bin/bash
sudo apt update && sudo apt upgrade
# tools
sudo apt install copyq, psensor, neofetch, gnome-multi-writer, gnome-shell-extension-manager, jq, python3-autopep8
# main programms
webcord_type=_amd64.deb && wget -O '/home/todoshi/Downloads/webcord.deb' $(curl -s https://api.github.com/repos/SpacingBat3/WebCord/releases/latest | jq -r ".assets[] | select(.name | test(\"${webcord_type}\")) | .browser_download_url") && sudo dpkg -i ~/Downloads/webcord.deb && rm ~/Downloads/webcord.deb
sudo add-apt-repository multiverse && sudo apt install steam
# sudo apt install snapd
sudo snap install telegram-desktop, code, chromium, gimp
# nvim (AstroNvim)
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && curl -fLo "Fira Code Regular Nerd Font Complete.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/FiraCode/Regular/complete/Fira%20Code%20Regular%20Nerd%20Font%20Complete.ttf
nvim_type=linux64.deb$ && wget -O '/home/todoshi/Downloads/nvim.deb' $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r ".assets[] | select(.name | test(\"${nvim_type}\")) | .browser_download_url") && sudo dpkg -i ~/Downloads/nvim.deb && rm ~/Downloads/nvim.deb && mv ~/.config/nvim ~/.config/nvimbackup && git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync
