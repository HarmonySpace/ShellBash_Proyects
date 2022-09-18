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
        echo "$log2" | while read line2
        do
            if [ "$j" == "$i" ]
            then
                echo "$line2"
            fi
            j=$((j+1))
        done
    fi
    i=$((i+1))
done


