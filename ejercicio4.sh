num=-1
while [ $num -lt 0 ]; do
	read -p "introduzca un numero: " num
	if [ $num -gt 0 ];then
		for i in `seq 0 $num` ; do
			echo $i

		done
	else
		echo "No es un numero válido"
	fi


done
