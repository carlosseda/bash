#!/bin/bash

#Este ejemplo lo que hace es demostrar que con un bucle “for” podemos recorrer los archivos de una carpeta, para hacer cosas con ellos. 
#Primero, como en el ejemplo 3, guarda en la variable “DAY” el resultado del comando “date” que da la fecha actual del sistema. 
#Después entra en una carpeta “fotos” creada dentro de la carpeta personal del usuario. 
#Finalmente el bucle recorre todos los archivos con extensión png (*.png), y dentro del bucle lo que se hace es cambiar el nombre de cada archivo añadiéndole el la fecha a su nombre. 

DAY=$(date +%F)

cd /home/$(hostname)/fotos

for FILE in *.png
  do
    mv $FILE ${DAY}-${FILE}
  done
