#!/bin/bash

for i in /home/rafael/Documents/*
do
	if [ -f $i ]
	then
		echo "Verificando o arquivo $i"
		LINHAS=$(cat $i | wc -l)
		echo "O arquivo $i contém $LINHAS linhas"
		echo
	fi	
done
