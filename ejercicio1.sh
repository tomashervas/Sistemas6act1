read -p "Por favor introduzca un numero: " num1
read -p "Por favor introduzca otro numero: " num2
if [ $num1 -lt $num2 ]
then
	echo $num2 " es el mayor de los valores"
elif [ $num1 -gt $num2 ]
then
	echo $num1 " es el mayor de los valores"
else
	echo "los valores son iguales"
fi
