#!/bin/bash
mkdir -p ~/.bashrc.d && cd ~/.bashrc.d && touch $_/aliases && echo 'alias path="realpath -s"' >> aliases && echo 'alias x="xclip -selection clipboard"' >> aliases && echo 'alias n="nvim"' >> aliases
# `path <filename>` returns fullpath to file 
# typing `| x` after command save command output to clipboard
# n=nvim

