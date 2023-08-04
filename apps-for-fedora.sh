#!/bin/bash
sudo dnf update

sudo dnf install neofetch

# copy output from terminal (command in fedora aliases)
sudo dnf install xclip

sudo dnf install chromium
sudo dnf install steam
sudo dnf install thunderbird

# flatpaks
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# tg desktop
sudo flatpak install org.telegram.desktop
# IntelliJ-IDEA-Community
sudo flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
# gimp (image editor)
sudo flatpak install fedora org.gimp.GIMP
# super cool markdown editor
sudo flatpak install com.github.marktext.marktext

sudo flatpak install com.discordapp.Discord
# note taking app
sudo flatpak install md.obsidian.Obsidian

# file syncing
sudo dnf install syncthing

# ASTRONVIM
# u can download ur own fonts
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && cd
sudo dnf install nodejs
sudo dnf install g++
sudo dnf install python3-pip
sudo dnf install python3-devel
nvim_type=nvim.appimage$ && wget -O ~/Downloads/nvim.appimage $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r ".assets[] | select(.name | test(\"${nvim_type}\")) | .browser_download_url") && cd ~/Downloads/ && chmod u+x nvim.appimage && sudo mv nvim.appimage /usr/local/bin/nvim && mkdir -p ~/.config/nvim && git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync
# if nvim dont run from terminal after that u can try
# cd ~/Downloads/ && ./nvim.appimage --appimage-extract && ./squashfs-root/usr/bin/nvim && sudo mv nvim.appimage /usr/local/bin/nvim && cd
