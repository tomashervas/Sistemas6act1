read -p "Por favor introduzca un numero mayor que 0" num
if [ $num -le 0 ]; then
	echo "El numero introducido es menor o igual a 0"
fi
resto=`expr $num % 2`

if [ $resto -eq 0 ]; then
	echo "El número es par"
else
	echo "El número es impar"
fi
