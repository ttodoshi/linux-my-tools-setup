#!/bin/bash
sudo dnf update

sudo apt install neofetch

# copy output from terminal (command in fedora aliases)
sudo apt install xclip

# telegram
cd ~/Dowloads && wget https://telegram.org/dl/desktop/linux && tar -xvf tsetup.*.tar.xz && sudo mv Telegram/ /opt && cd /opt/Telegram/ && ./Telegram && cd

# discord
sudo dnf upgrade --refresh -y
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update
sudo dnf install discord

sudo dnf install chromium
sudo dnf install sqlitebrowser
sudo dnf install steam
sudo dnf install thunderbird

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
sudo flatpak install fedora org.gimp.GIMP
sudo flatpak install com.github.marktext.marktext

# ASTRONVIM
# u can download ur own fonts
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && cd
sudo dnf install nodejs
sudo dnf install g++
sudo dnf install python3-pip
nvim_type=nvim.appimage$ && wget -O ~/Downloads/nvim.appimage $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r ".assets[] | select(.name | test(\"${nvim_type}\")) | .browser_download_url") && cd ~/Downloads/ && chmod u+x nvim.appimage && sudo mv nvim.appimage /usr/local/bin/nvim && mkdir -p ~/.config/nvim && git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync
# if nvim dont run from terminal after that u can try
# cd ~/Downloads/ && ./nvim.appimage --appimage-extract && ./squashfs-root/usr/bin/nvim && sudo mv nvim.appimage /usr/local/bin/nvim && cd
