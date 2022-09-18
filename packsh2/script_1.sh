#!/bin/bash

#ubicación
cd /etc || return 1

#usuarios
log=$(cut group -d":" -f4)
#nombre de grupos
log
echo "$log"


