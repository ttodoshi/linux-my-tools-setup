#!/bin/bash
nvim +"LspInstall pyright cssls eslint jsonls vimls yamlls bashls lua"
nvim +"TSInstall java python html css javascript json lua"
nvim +"DapInstall python"
git clone https://github.com/ttodoshi/astronvim-config.git ~/.config/nvim/lua/user
pip3 install autopep8 flake8
nvim  --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

