#!/bin/bash

echo "--------------------------------------------"
echo ">> Instalando o LocalSend"
echo "--------------------------------------------"
sudo apt install gcc make adb usbmuxd linux-headers-`uname -r`
cd /tmp/
wget https://files.dev47apps.net/linux/droidcam_latest.zip
unzip droidcam_latest.zip -d droidcam && cd droidcam
sudo ./install-client
sudo ./install-video
sudo ./install-sound