#!/bin/bash

echo "-------------------------------------------------------------"
echo ">> Adicionar a chave GPG do repositório do VirtualBox"
echo "-------------------------------------------------------------"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sleep 1

echo "---------------------------------------------------------"
echo ">> Adicionar o repositório do VirtualBox ao sources.list.d"
echo "---------------------------------------------------------"
echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
sleep 1

echo "--------------------------------------------"
echo ">> Atualizar os pacotes e instalar o VirtualBox"
echo "--------------------------------------------"
sudo apt-get update
sudo apt-get install -y virtualbox-7.0
sleep 1