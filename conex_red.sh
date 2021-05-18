#!/bin/bash

echo -e "Para mostrar las conexiones de red, elige las siguientes opciones\n"
echo -e "1: Conexión establecida"
echo -e "2: Conexión de escucha"
echo -e "3: Si deseas mostrar los paquetes que llegan a un puerto"

read var

case $var in
	1)
		netstat -natu | grep tcp | grep ESTABLISHED

	;;

	2)
		netstat -natu | grep 'tcp' | grep LISTEN

	;;

	3)
		echo -e "\nEscribe el puerto\n"
		read port
		sudo tcpdump port $port
	;;

	*)
		exit
esac
