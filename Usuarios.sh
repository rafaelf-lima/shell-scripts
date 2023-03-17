#!/bin/bash

UID_MINIMO=1000
UID_MAXIMO=60000

OLDIFS=$IFS
IFS=$'\n'

echo -e "Usuário\t\tUID\tDiretório Home\t\tNome ou Descrição"

for i in $(cat /etc/passwd)
do
	USERID=$(echo $i | cut -d: -f3)
	if [ $USERID -ge $UID_MINIMO -a $USERID -le $UID_MAXIMO ]
	then
		USER=$(echo $i | cut -d: -f1)
		USERDESC=$(echo $i | cut -d: -f5 | tr -d ',')
		USERHOME=$(echo $i | cut -d: -f6)
		echo -e "$USER\t\t$USERID\t\t$USERHOME\t\t$USERDESC"
	fi
done
IFS=$OLDIFS


