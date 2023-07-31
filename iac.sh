#!/bin/bash

echo "Criando diretórios..."


mkdir /compartilhada
mkdir /comercial
mkdir /vendas
mkdir /seguranca

echo "Criando grupos de usuários..."


groupadd GRP_COM
groupadd GRP_VEN
groupadd GRP_SEG

echo "Criando usuários..."


useradd carlos -c "Carlos da Silva" -m -s /bin/bash
passwd carlos
useradd maria -c "Maria Antunes" -m -s /bin/bash
passwd maria
useradd joao -c "João Carlos" -m -s /bin/bash
passwd joao
useradd debora -c "Debora  Pereira" -m -s /bin/bash
passwd debora

useradd sebastiana -c "Sebastiana Barbosa" -m -s /bin/bash
passwd sebastiana
useradd roberto -c "Roberto Henrique" -m -s /bin/bash
passwd roberto
useradd carla -c "Carla Alves" -m -s /bin/bash
passwd carla

useradd amanda -c "Amanda Ribas" -m -s /bin/bash
passwd amanda
useradd rogerio -c "Rogerio Cunha" -m -s /bin/bash
passwd rogerio

echo "Adicionando usuários aos grupos..."

usermod carlos -G GRP_COM
usermod maria -G GRP_COM
usermod joao -G GRP_COM

usermod debora -G GRP_SEG
usermod sebastiana -G GRP_COM
usermod roberto -G GRP_VEN
usermod carla -G GRP_SEG

usermod amanda -G GRP_SEG
usermod rogerio -G GRP_VEN

echo "Especificando permissões aos diretórios..."

chown root:GRP_COM /comercial
chown root:GRP_VEN /vendas
chown root:GRP_SEG /seguranca

chmod 770 /comercial
chmod 770 /vendas
chmod 770 /seguranca


echo "Finalizado!"
