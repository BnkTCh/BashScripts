# !/bin/bash
cat nombres.txt
echo -e "\nQué nombre deseeas reemplazar\n"
read nombre
echo -e "\nIntroduce tu nombre\n"
read minombre
echo -e "\nA continuación se reemplazará el nombre elegido por el tuyo\n"
read -rsp $'\nPresiona enter para continuar...\n'

# Reemplaza la variable "nombre" por "minombre".
sed "s/$nombre/$minombre/" nombres.txt

sleep 1

echo -e "\nMuestra el 3° campo de cada fila\n"
read -rsp $'\nPresiona enter para continuar...\n'
# awk Muestra el 3° campo de cada fila.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}'

sleep 1

echo -e "\nLo ordenamos alfabéticamente\n"
read -rsp $'\nPresiona enter para continuar...\n'
# sort lo ordena alfabeticamente.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}' | sort

sleep 1

echo -e "\nMostramos la cantidad de veces que se repiten los nombres\n"
read -rsp $'\nPresiona enter para continuar...\n'
# uniq -c muestra la cantidad de veces que se repite cada nombre.
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}' | sort | uniq -c

sleep 1

echo -e "\nMostramos la primera letra de cada nombre\n"
read -rsp $'\nPresiona enter para continuar...\n'
# uniq -c muestra la cantidad de veces que se repite cada nombre
sed "s/$nombre/$minombre/" nombres.txt | awk '{print $3}' | sort | uniq | cut -b -1
