

line1=($(who | tr -s ' ' | cut -d" " -f1 | sort))

k=($(echo ${#line1[*]}))

i=0
while [ "$i" -lt "$k" ]
do
	if [ "${line1[i-1]}" != ${line1[i]} ]
	then
		j=0
		n=0
		while [ "$j" -lt "$k" ]
		do
			if [ "${line1[i]}" == "${line1[j]}" ]
			then
				n=$((n+1))
			fi
			j=$((j+1))
		done
		echo "${line1[i]} $n"
	fi
	i=$((i+1))
done

