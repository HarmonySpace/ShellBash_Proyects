#!/bin/bash
#bloquear a los usuarios conectados

#users
echo "Usuarios logueados"
log=$(who | tr -s ' ' | cut -d" " -f1 | sort | uniq)
echo "$log"

#vars
i=0
declare -a log

echo "$log" | while IFS= read line
	do
		if [ "$line" != "$master" ]
		then
			sudo usermod -L $line
			echo "Usuario detectado :: Bloqueado"