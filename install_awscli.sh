#!/bin/bash

echo "--------------------------------------------"
echo ">> Baixando o pacote de instalação da AWS CLI v2..."
echo "--------------------------------------------"
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sleep 1

echo "--------------------------------------------"
echo ">> Descompactando o pacote..."
echo "--------------------------------------------"
unzip awscliv2.zip
sleep 1

echo "--------------------------------------------"
echo ">> Instalando a AWS CLI v2..."
echo "--------------------------------------------"
sudo ./aws/install
sleep 1

echo "--------------------------------------------"
echo ">> Removendo arquivos desnecessários após a instalação..."
echo "--------------------------------------------"
rm -rf awscliv2.zip aws
