sudo su
pacman -Syu

# some app that i use

pacman -S steam
pacman -S thunderbird
# for file syncing between devices
pacman -S syncthing

# tg desktop
flatpak install org.telegram.desktop
# IntelliJ-IDEA-Community
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
# discord
flatpak install com.discordapp.Discord
# note taking app
flatpak install md.obsidian.Obsidian


# docker
pacman -S docker
systemctl start docker.service
systemctl enable docker.service
usermod -aG docker $USER

# nvim (astronvim)

pacman -S neovim

mkdir -p ~/.local/share/fonts && cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/Hack/Regular/HackNerdFont-Regular.ttf && cd
pacman -S nvm
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.bashrc
echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc
reset
nvm install --lts
pacman -S python
pacman -S python-pip

nvim +"LspInstall pyright cssls eslint jsonls vimls yamlls bashls lua"
nvim +"TSInstall java python html css javascript json lua"
git clone https://github.com/ttodoshi/astronvim.git ~/.config/nvim/lua/user

