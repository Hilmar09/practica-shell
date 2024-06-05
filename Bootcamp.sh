bucles
#!bin/bash

pid=$$
intentos=0
acertado=0

echo "trata de adivinar el PID de este script"

while [ $acertado -eq 0 ]; do
    read -p "Introduce un número: " numero
    intentos=$((intentos + 1))

    if [ $numero -eq $pid ]; then
        echo "Adivinaste el PID del script."
        acertado=1
    elif [ $numero -lt $pid ]; then
        echo "El número es menor que el PID del script."
    else
        echo "El número es mayor que el PID del script."
    fi
done

echo "Número de intentos: $intentos" 

while true; do
 read -p "Introduce el nombre del archivo a agregar: " archivo
    touch "$archivo" && echo "Archivo '$archivo' creado"
sleep 3
    echo "Lista de archivos actual:"
    ls -1
 read -p "¿Deseas borrar un archivo? (si/no): " respuesta
    if [[ "$respuesta" == "si" || "$respuesta" == "s" ]]; then
        read -p "Introduce el nombre del archivo a borrar (sin formato): " nombre
        read -p "Introduce el formato del archivo a borrar (por ejemplo, txt): " formato
        archivo_borrar="${nombre}.${formato}"
        
        if [ -f "$archivo_borrar" ]; then
            rm "$archivo_borrar" && echo "Archivo '$archivo_borrar' borrado."
        else
            echo "Archivo '$archivo_borrar' no encontrado."
        fi
    else
        echo "Ok, no borraremos ningún archivo."
        break
    fi
done








