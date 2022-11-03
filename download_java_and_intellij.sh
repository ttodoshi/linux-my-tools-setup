#!/bin/bash
sudo apt update && sudo apt upgrade
# java (check the version before run)
cd ~/Downloads && wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.deb && sudo dpkg -i ~/Downloads/jdk-19_linux-x64_bin.deb && sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-19/bin/java 1 && sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-19/bin/javac 1 && sudo update-alternatives --config java && echo 'JAVA_HOME="/usr/lib/jvm/jdk-19"' >> /etc/environment && rm ~/Downloads/jdk-19_linux-x64_bin.deb
# intelliJ IDEA
cd ~/Downloads && wget https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux&code=IIC && tar -xzf $(find ~/Downloads/ -iname "ideaIC*.tar.gz") && ~/Downloads/ideaIC*/idea-IC*/bin/idea.sh && rm $(find ~/Downloads/ -iname "ideaIC*.tar.gz")
