# !/bin/bash

#Script para conocer la ip de un sitio web y los puertos que tiene abiertos.

ip=`dig +short $1`

echo "La ip de $1 es $ip"
