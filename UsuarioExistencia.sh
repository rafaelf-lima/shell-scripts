#!/bin/bash
USUARIO=$(grep "$1" /etc/passwd)

if [ -n "$USUARIO" ]
then
	echo "O usuário existe"
	if [ "$VAR1" = ricardo ]
	then 
		echo ok
	fi
else
	echo "O usuário não existe!"
fi	
