#!/bin/bash

echo "Verificando a arquitetura da máquina..."
echo "--------------------------------------------"

if [ "$(uname -m)" = "x86_64" ]; then

  echo "Arquitetura x86_64 detectada. Baixando o binário do Kind para Linux 64-bit..."
  echo "--------------------------------------------"
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
  
  echo "Tornando o binário do Kind executável..."
  echo "--------------------------------------------"
  chmod +x ./kind
  
  echo "Movendo o binário do Kind para /usr/local/bin..."
  echo "--------------------------------------------"
  sudo mv ./kind /usr/local/bin/kind

  echo "Kind instalado com sucesso!"
  echo "--------------------------------------------"
else
  echo "Arquitetura não suportada. Este script suporta apenas arquiteturas x86_64."
  echo "--------------------------------------------"
fi