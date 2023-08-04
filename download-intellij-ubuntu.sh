#!/bin/bash
cd ~/Downloads && wget https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux&code=IIC && tar -xzf $(find ~/Downloads/ -iname "ideaIC*.tar.gz") && ~/Downloads/ideaIC*/idea-IC*/bin/idea.sh && rm $(find ~/Downloads/ -iname "ideaIC*.tar.gz")
