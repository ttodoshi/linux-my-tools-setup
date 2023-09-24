#!/bin/bash
sudo dnf update

sudo dnf install neofetch

# copy output from terminal (command in fedora aliases)
sudo dnf install xclip

sudo dnf install chromium
sudo dnf install steam
sudo dnf install thunderbird

# file syncing
sudo dnf install syncthing

# FLATPAKS
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

# docker
sudo dnf remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl start docker

# ASTRONVIM
# u can download ur own fonts
mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf && cd
sudo dnf install nodejs
sudo dnf install g++
sudo dnf install python3-pip
sudo dnf install python3-devel
sudo dnf install neovim

nvim +"LspInstall pyright cssls eslint jsonls vimls yamlls bashls lua"
nvim +"TSInstall java python html css javascript json lua"
nvim +"DapInstall python"
git clone https://github.com/ttodoshi/astronvim.git ~/.config/nvim/lua/user
pip3 install autopep8 flake8
nvim  --headless -c 'autocmd User PackerComplete quitall'

