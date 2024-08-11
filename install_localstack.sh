#!/bin/bash

echo "--------------------------------------------"
echo ">> Baixando o binário pré-construído para arquitetura: x86-64..."
echo "--------------------------------------------"
curl --output localstack-cli-3.6.0-linux-amd64-onefile.tar.gz \
    --location https://github.com/localstack/localstack-cli/releases/download/v3.6.0/localstack-cli-3.6.0-linux-amd64-onefile.tar.gz
sleep 1

echo "--------------------------------------------"
echo ">> Extraindo a CLI LocalStack..."
echo "--------------------------------------------"
sudo tar xvzf localstack-cli-3.6.0-linux-*-onefile.tar.gz -C /usr/local/bin
sleep 1

echo "--------------------------------------------"
echo ">> Removendo arquivos desnecessários..."
echo "--------------------------------------------"
sudo rm -rf localstack-cli-3.6.0-linux*
sleep 1

echo "--------------------------------------------"
echo ">> Verificando a versão instalada..."
echo "--------------------------------------------"
localstack --version
sleep 1

echo "--------------------------------------------"
echo ">> FIM... - By @eriknathan"
echo "--------------------------------------------"