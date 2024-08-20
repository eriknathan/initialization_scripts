#!/bin/bash

# Verifica se a arquitetura é x86_64
echo "Verificando a arquitetura da máquina..."
if [ "$(uname -m)" = "x86_64" ]; then
  echo "Arquitetura x86_64 detectada. Baixando o binário do Kind para Linux 64-bit..."
  
  # Baixa o binário do Kind para Linux 64-bit
  curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.24.0/kind-linux-amd64
  
  echo "Tornando o binário do Kind executável..."
  
  # Torna o binário executável
  chmod +x ./kind
  
  echo "Movendo o binário do Kind para /usr/local/bin..."
  
  # Move o binário para /usr/local/bin
  sudo mv ./kind /usr/local/bin/kind

  echo "Kind instalado com sucesso!"
else
  echo "Arquitetura não suportada. Este script suporta apenas arquiteturas x86_64."
fi