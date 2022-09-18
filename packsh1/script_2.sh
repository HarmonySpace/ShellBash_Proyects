
#script 2
#Nombre de usuarios conectados
line1=($(who | tr -s ' ' | cut -d" " -f1 | sort))

#Número de usuarios
k=($(echo ${#line1[*]}))

#mensaje 1
message=("Bienvenido al sistema ")
#mensaje 1
message2=("Dejaremos solamente una seción iniciada")



i=0
while [ "$i" -lt "$k" ]
do
	if [ "${line1[i-1]}" != ${line1[i]} ]
	then
		line2=($(echo "$message" |  sudo write ${line1[i]}))
	else
		line3=($(echo "$message2" | sudo write ${line1[i]}))
	fi
	i=$((i+1))
done

