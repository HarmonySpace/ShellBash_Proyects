
#script 2
line1=($(who | tr -s ' ' | cut -d" " -f1 | sort))

k=($(echo ${#line1[*]}))

i=0
while [ "$i" -lt "$k" ]
do
	if [ "${line1[i-1]}" != ${line1[i]} ]
	then

	fi
	i=$((i+1))
done

