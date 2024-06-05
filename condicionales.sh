echo Ejercicio 1
sleep 1
echo $(id)

if [ "$EUID" -ne 0 ]; then 
echo "Tiene acceso a los permisos"
else 
echo "No tiene acceso como root"
fi



echo "Continuamos con el ejercicio 2"
sleep 1
echo "Dime un número" 
read n1
# Validar que la entrada sea un número
if ! [[ $n1 =~ ^-?[0-9]+$ ]]; then
    echo "No es un número válido"
    exit
fi

echo "Dime otro número"
read n2
if ! [[ $n1 =~ ^-?[0-9]+$ ]]; then
    echo "No es un número válido"
    exit
fi

if [ $n1 -eq $n2 ]; then 
    echo "Los números ingresados son iguales"

elif [ $n1 -gt $n2 ]; then
    echo "$n1 es mayor que $n2"

elif   [ $n1 -lt $n2 ]; then
    echo "$n2 es mayor que $n1"
fi

# Ejercicio 3
# Escribir un script que nos diga si el valor ingresado es divisible por 2

echo "Continuamos con el ejercicio 3"
sleep 1
echo "Dime un número"
read n3
if ! [[ $n3 =~ ^-?[0-9]+$ ]]; then
echo "Lo que ingresaste no es un número válido."
Exit
fi

if [[ $((n3%2)) -eq 0 ]]; then
echo "$n3 es divisible entre 2"
else
echo "$n3 no es divisible entre 2"
fi


