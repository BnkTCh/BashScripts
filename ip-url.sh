# !/bin/bash

#Script para conocer la ip de un sitio web y los puertos que tiene abiertos.

ip=`dig +short $1`

echo -e "\nLa ip de $1 es $ip"
echo -e "\nQuieres saber la siguiente información de "$1"\n"
echo -e "1: Puertos abiertos"
echo -e "2: Analizar la ruta de red\n"


read var

case $var in
	1)
	nmap $ip
	
	;;
	
	2)
	traceroute $1
	
	;;

	*)
	exit
esac
