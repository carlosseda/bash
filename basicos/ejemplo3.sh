#!/bin/bash

#En este ejemplo se enseña que una variable puede contener el resultado de un comando, en este caso “hostname”. 
#Sí escribiéramos hostname en una consola (fuera del script) el comando lo que haría es darnos el nombre de la máquina. 
#Debemos fijarnos que para guardar el resultado de un comando en una variable tenemos que escribir el comando (en este caso “hostname”) dentro de $(  ). 
#Luego se enseña que una variable puede ser usada dentro de un string (la frase que está entre comillas).

HOSTNAME=$(hostname)

echo "esta máquina se llama $HOSTNAME"
