#!/bin/bash

echo -e "\nMostrar el top X de procesos que consumen más CPU\n"
echo -e "\nPresiona un número para X\n"
read lines 

numps=$((1 + $lines))

echo -e "\n"
ps -Ao user,uid,comm,pid,pcpu,tty --sort=-pcpu | head -n "$numps"

#preguntar cual matar...

echo -e "\nEscribe el PID del proceso que deseas matar\n"
read pid

kill -9 $pid

exit
