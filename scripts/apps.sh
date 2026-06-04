#!/bin/bash

#brave
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

#google-chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo apt update 
sudo apt install brave-browser nemo -y
sudo apt install ./google-chrome-stable_current_amd64.deb -y
