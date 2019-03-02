num=-1
suma=0
contador=0
while [ $num -ne 0 ]; do
	read -p "introduzca un numero: " num
	if [ $num -ne 0 ];then
		suma=`expr $suma + $num`
		contador=`expr $contador + 1`
		media=`expr $suma / $contador`
	fi
done
echo $suma
echo $media