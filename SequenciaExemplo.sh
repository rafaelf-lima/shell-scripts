#!/bin/bash

clear
read -p "Início da sequência: " INICIO
read -p "Final da sequência: " FINAL

for i in $(seq "$INICIO" "$FINAL")
do
	echo "Exibindo o valor $i"
	sleep 1
done
