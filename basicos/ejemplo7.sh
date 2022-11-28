#!/bin/bash

#En este realizamos lo mismo que en el ejemplo 6, pero en vez de preguntar al usuario mediante “read” cual es el archivo o carpeta que queremos comprobar, 
# lo que hacemos es pasar al script un parámetro. Para pasar al script un parámetro lo que debemos hacer es en la consola ejecutar el script como se hace normalmente 
# seguido de un espacio y escribiendo a continuación aquello que queremos pasar como parámetro. Por ejemplo: 
# sudo ./nombre_del_script.sh  /var/www
# Donde  “sudo ./nombre_del_script.sh” es la forma normal de ejecutar un script y “/var/www” es el parámetro que pasamos al script. 
# Ese parámetro como es el primero se recoge dentro del script escribiendo “$1”, en este caso cada vez que usemos “$1” significará /var/www 
# Si pasáramos dos parámetros al script, por ejemplo:
# sudo ./nombre_del_script.sh  /var/www /etc
# Podríamos acceder al segundo parámetro “/etc” escribiendo $2 dentro del script. 

FILE=$1

if [ -f "$FILE" ]
  then
     echo "$FILE es un archivo normal"
elif [ -d "$FILE" ]
  then
     echo "$FILE es una carpeta"

else
  echo "$FILE es otro tipo de archivo"
fi

ls -l $FILE   
