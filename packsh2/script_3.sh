#!/bin/bash

cd /etc

log=$(cut group -d":" -f4)
log2=$(whoami)

i=0
while read line
do
    if [ "$line" == "$log2" ]
    then
        i=$((i+1))
    fi
done < <(echo "$log")
echo "El usuario $log2 pertenece a $i"