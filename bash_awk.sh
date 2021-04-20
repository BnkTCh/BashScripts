# Muestra la 1°,5° y 3° palabra de cada línea.

awk '{print $1,$5,$3}' fichero.txt
