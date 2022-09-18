#!/bin/bash

#ubicación
cd /etc || return 1

#usuarios
log=$(cut group -d":" -f4)
#nombre de grupos
log2=$(cut group -d":" -f1)


#prints
i=0
j=0
echo "Los grupos con usuarios asignados son"
echo "$log" | while read line
do
    if [ -n "$line" ]
    then
        k=1
        while read -rn1 c
        do
            if [ -n "$c" ] && [ "$c" == ',' ]
            then
                k=$((k+1))
            fi
        done < <(echo "$line")
        #imprime el nombre sel grupo
        echo "$log2" | while read line2
        do
            if [ "$j" == "$i" ]
            then
                echo "$line2 $k"
            fi
            j=$((j+1))
        done
    fi
    i=$((i+1))
done