#!/bin/bash

read -p "Informe o valor 1: " VALOR1
read -p "Informe o valor 2: " VALOR2

echo
echo "A soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"
