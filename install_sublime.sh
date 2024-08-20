#!/bin/bash

echo "--------------------------------------------"
echo ">> Install the GPG key"
echo "--------------------------------------------"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null

echo "--------------------------------------------"
echo ">> Using stable channel"
echo "--------------------------------------------"
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

echo "--------------------------------------------"
echo ">> Update apt sources"
echo "--------------------------------------------"
sudo apt-get update

echo "--------------------------------------------"
echo ">> install Sublime Text"
echo "--------------------------------------------"
sudo apt-get install sublime-text
