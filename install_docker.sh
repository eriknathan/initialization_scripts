#!/bin/bash

echo "-------------------------------------------------------------"
echo ">> Add Docker's official GPG key!"
echo "-------------------------------------------------------------"
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sleep 1

echo "---------------------------------------------------------"
echo ">> Add the repository to Apt sources"
echo "---------------------------------------------------------"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sleep 1

echo "--------------------------------------------"
echo ">> Install the latest version"
echo "--------------------------------------------"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sleep 1

echo "--------------------------------------------"
echo ">> Docker version"
echo "--------------------------------------------"
sudo docker --version
sleep 1

echo "--------------------------------------------"
echo ">> Adding User to group Docker"
echo "--------------------------------------------"
sudo usermod -aG docker $USER
sleep 1