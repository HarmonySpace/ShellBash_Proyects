#!/bin/bash

cd ~/

log=$( ls -la | tr -s ' ' | cut -d" " -f3 )
log2=$( ls -la | tr -s ' ' | cut -d" " -f9 )
log3=$( whoami )

i=0
j=0

echo "Los archivos pertenecientes a $log3 son :"

echo "$log" | while read line
do
    if [ "$line" == "$log3" ]
    then
        echo "$log2" | while read line2
        do
            if [ "$j" -eq "$i" ]
            then
                echo "$line2"
            fi
            j=$((j+1))
        done
    fi
    i=$((i+1))
done