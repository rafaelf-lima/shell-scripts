#!/bin/bash

clear
read -p "Informe o limite de procesos: " MAXIMO
while [ $(ps axu | wc -l) -le $MAXIMO ]
do
	echo "Ok"
	echo "Processos atuais: $(ps axu|wc -l)"
	sleep 3
	echo
done

echo "Limite de processos excedido. Verifique o sistema."

