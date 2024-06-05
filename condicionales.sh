#!bin/bash

#ejercicio 3
id=$(id)

echo "este es el id $id"

if [ "$EUID" -ne 0 ]; then 
   echo "no tienes acceso como root"
fi

read -p "ingresa primer numero:" n1
read -p "ingresa segundo numero:" n2

if [ "$n1" -eq "$n2" ]; then 
   echo "los numeros ingresados son iguales"
elif [ "$n1" -gt "$n2" ]; then
   echo "n1 es mayor que n2"
else
   echo "n2 es mayor que n1"
fi

read -p "ingresa el numero:" numero

 if [ $((numero % 2)) -eq 0 ]; then
 echo "el numero $numero es divisible por dos"
 else 
 echo "el numero $numero no es divisble por 2"
 fi
 








