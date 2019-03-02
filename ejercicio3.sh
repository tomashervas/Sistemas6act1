nota=-1
while [[ $nota -lt 0 || $nota -gt 10 ]]; do
	read -p "introduzca una nota: " nota
	if [[ $nota -ge 0 && $nota -lt 5 ]]; then
		echo "has suspendido"
	elif [ $nota -eq 5 ]; then
		echo "has aprobado"
	elif [ $nota -eq 6 ]; then
		echo "has sacado un bien"
	elif [[ $nota -eq 7 || $nota -eq 8 ]]; then
		echo "has sacado un notable"
	elif [[ $nota -eq 9 || $nota -eq 10 ]]; then
		echo "has sacado un sobresaliente"
	else
		echo "no ha introducido una nota válida, vuelva a intentarlo"
	fi
done
