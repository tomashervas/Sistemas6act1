dia=-1
while [[ $dia -le 0 || $dia -gt 30 ]]; do
	read -p "Por favor introduzca un número de dia del mes(1/30): " dia
done
declare -a mes
semana=( lunes martes miercoles jueves viernes sabado domingo)
contador=0
indice=`expr $dia - 1`
for i in `seq 0 29`; do
	mes[$i]=${semana[$contador]}
	contador=$((contador+1))
	if [[ contador -eq 7 ]]; then
		contador=0
	fi
done
echo "El dia que ha seleccionado es el" ${mes[$indice]}

