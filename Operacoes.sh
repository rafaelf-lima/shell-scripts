#!/bin/bash

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

if [ ! $VALOR1 ] || [ ! $VALOR2 ]
then
	echo "Não pode ser nulo"
	exit 1
fi

echo
echo "Escolha uma operação: "
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
echo "Q - Sair"
echo
read -p "Opção: " OPCAO
case $OPCAO in
	1) 
		OPER="+"
		;;
	2) 
		OPER="-"
		;;
	3) 
		if [ $VALOR1 -eq 0 -o $VALOR2 -eq 0 ]
		then
			echo "Um valor 0 não pode ser utilizado na multiplicação"
			exit 1
		fi
		OPER="*"
		;;
	4) 
		if [ $VALOR1 -eq -o $VALOR2 -eq 0 ]
		then 
			echo "Um valor 0 não pode ser utilizado na divisão"
			exit 1
		fi
		if [ $(expr $VALOR1 % $VALOR2) -ne 0 ]
		then  
			echo "Divisão com resto = $(expr $VALOR1 % $VALOR2)"
		else
			echo "Divisão exata"
		fi
		echo
		OPER="/"
		;;
	[Qq])
		echo "Saindo..."
		exit
		;;
	*)
		echo "Opção inválida"
		exit 1
		;;
esac
echo
echo "$VALOR1 $OPER $VALOR2 = $(expr $VALOR1 "$OPER" $VALOR2)"

