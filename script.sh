# !/bin/bash

echo "Reemplazamos la palabra ride por SING"

# solicita la tecla enter para continuar con el script.
read -rsp $'Presiona enter para continuar...\n'

# Reemplaza la palabra "ride" por "SING".
sed 's/ride/SING/' Ride.txt

read -rsp $'Presiona enter para continuar...\n'

awk '{print $3}' Ride.txt
