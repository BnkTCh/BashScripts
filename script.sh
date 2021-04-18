# !/bin/bash
cat nombres.txt
echo "Qué nombre deseeas reemplazar?"
read nombre
echo "Introduce tu nombre"
read minombre
echo "a continuación se reemplazará el nombre elegido por el tuyo"
read -rsp $'\nPresiona enter para continuar...\n'

# Reemplaza la variable "nombre" por "minombre".
sed "s/$nombre/$minombre/" nombres.txt

sleep 1

echo "Muestra el 3° campo de cada fila"
read -rsp $'\nPresiona enter para continuar...\n'
# awk Muestra el 3° campo de cada fila.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}'

sleep 1

echo "Lo ordenamos alfabéticamente"
read -rsp $'\nPresiona enter para continuar...\n'
# sort lo ordena alfabeticamente.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}' | sort

sleep 1

echo "Mostramos la cantidad de veces que se repiten los nombres"
read -rsp $'\nPresiona enter para continuar...\n'
# uniq -c muestra la cantidad de veces que se repite cada nombre.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}' | sort | uniq -c
