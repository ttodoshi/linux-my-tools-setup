#!/bin/bash
sudo dnf update

# drivers for video watch
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf install lame\* --exclude=lame-devel
sudo dnf group upgrade --with-optional Multimedia

sudo apt install neofetch

# copy output from terminal (command in fedora aliases)
sudo apt install xclip

# telegram
cd ~/Dowloads && curl https://telegram.org/dl/desktop/linux && tar -xvf tsetup.*.tar.xz && sudo mv Telegram/ /opt && cd /opt/Telegram/ && ./Telegram && cd

# discord
sudo dnf upgrade --refresh -y
sudo dnf install https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf update
sudo dnf install discord

sudo dnf install java
sudo dnf install chromium

# ASTRONVIM
# u can download ur own fonts
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf && cd
sudo dnf install nodejs
sudo dnf install g++
nvim_type=nvim.appimage$ && wget -O ~/Downloads/nvim.appimage $(curl -s https://api.github.com/repos/neovim/neovim/releases/latest | jq -r ".assets[] | select(.name | test(\"${nvim_type}\")) | .browser_download_url") && cd ~/Downloads/ && chmod u+x nvim.appimage && sudo mv nvim.appimage /usr/local/bin/nvim && mkdir -p ~/.config/nvim && git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim && nvim +PackerSync
# if nvim dont run from terminal after that u can try
# cd ~/Downloads/ && ./nvim.appimage --appimage-extract && ./squashfs-root/usr/bin/nvim && sudo mv nvim.appimage /usr/local/bin/nvim && cd
