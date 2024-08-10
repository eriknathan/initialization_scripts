#!/bin/bash

# echo "-------------------------------------------------------------"
# echo ">> Baixar e adicionar a chave GPG do repositório da HashiCorp"
# echo "-------------------------------------------------------------"
# wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
# sleep 1

# echo "---------------------------------------------------------"
# echo ">> Adicionar o repositório da HashiCorp ao sources.list.d"
# echo "---------------------------------------------------------"
# echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
# sleep 1

echo "--------------------------------------------"
echo ">> Atualizar os pacotes e instalar o Vagrant"
echo "--------------------------------------------"
sudo apt install vagrant
sleep 1
