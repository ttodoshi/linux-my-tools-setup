#!/bin/bash
# install chromedriver for ur chromium browser version and then run this script
cd ~/Downloads/
unzip chromedriver_linux64.zip
sudo rm chromedriver_linux64.zip
sudo mv -f ./chromedriver /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver
