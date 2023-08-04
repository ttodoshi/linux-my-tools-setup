#!/bin/bash
touch ~/.bash_aliases
echo 'alias path="realpath -s"' >> ~/.bash_aliases && echo 'alias x="xclip -selection clipboard"' >> ~/.bash_aliases && echo 'alias n="nvim"' >> ~/.bash_aliases && echo 'alias av="source ./venv/bin/activate"' >> ~/.bash_aliases
# `path <filename>` returns fullpath to file 
# typing `| x` after command save command output to clipboard
# n=nvim
# av - activate venv in current dir
