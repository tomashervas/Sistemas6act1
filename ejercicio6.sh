consumoAgua=-1
while [ $consumoAgua -le 0 ]; do
	read -p "Por favor introduzca la cantidad de litros de agua consumidos: " consumoAgua
done
if [ $consumoAgua -le 50 ];then
	coste=50
elif [[ $consumoAgua -le 200 ]]; then
	consumoAgua200=$(($consumoAgua-50))
	costeFijo=50
	costeExtra=$((($consumoAgua200*20)/100))
	coste=$(($costeFijo+$costeExtra))
	centimos=$((($consumoAgua200*20)%100))
else
	consumoAguaRestante=$((consumoAgua-200))
	coste=$((50+((150*20)/100)+((consumoAguaRestante*10)/100)))
	centimos=$(((consumoAguaRestante*10)%100))
fi
echo "El coste de su consumo de agua es de " $coste "€ y " $centimos "centimos"
