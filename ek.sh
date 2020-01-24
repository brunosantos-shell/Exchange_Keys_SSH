#!/usr/bin/env bash

#Gerar Chave Pub/Priv RSA 2048
ssh-keygen -t rsa -b 2048

clear

#Copiar Chave Pub para o Host remoto
echo Digite o USUARIO@SERVER do host remoto
read remotehost
#echo $remotehost
ssh-copy-id $remotehost

#Checar Chave Pub no Host remoto
ssh $remotehost cat  ~/.ssh/authorized_keys

exit