#!/bin/bash
#Mostrar a los usuarios bloqueados

#directorio
cd /etc

#variables y arreglos
i=0
j=0
k=0
declare -a log
declare -a log2

#guardar nombres
sudo cut shadow -d':' -f2 | while IFS= read line
do
	#echo $line
	log[i]=$line
	#echo ${log[i]}
	#i=$((i+1))
	master=($(printf "%s" "${log[i]}" | cut -c1))
	if [ "$master" == "!" ]
	then
		sudo cut shadow -d':' -f1 | while IFS= read line2
		do
			if [ "$j" -eq "$i" ]
			then
				log2[i]=$line2
				echo "El usuario ${log2[i]} esta bloqueado"
			fi
			j=$((j+1))
		done
	fi
	i=$((i+1))
done
