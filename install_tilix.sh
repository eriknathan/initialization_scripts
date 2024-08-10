#!/bin/bash

echo "--------------------------------------------"
echo ">> Baixando repositório..."
echo "--------------------------------------------"
sudo add-apt-repository ppa:webupd8team/terminix
sleep 1

echo "--------------------------------------------"
echo ">> Atualizando sistema..."
echo "--------------------------------------------"
sudo apt-get update
sleep 1

echo "--------------------------------------------"
echo ">> Instalando o Tilix..."
echo "--------------------------------------------"
sudo apt install tilix
