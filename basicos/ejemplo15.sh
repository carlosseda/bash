#!/bin/bash

#En este ejemplo se utiliza el comando tee para añadir un texto a un archivo, en concreto creará el archivo “hola.txt” en la misma carpeta donde se encuentre el script y dentro escribirá “Hola mundo”, 
# podemos añadir una ruta alternativa en vez de “hola.txt”, por ejemplo podríamos decir que genere el nuevo archivo en /etc/php/hola.txt 
# o podríamos incluir el texto en un archivo ya existente. El parámetro “-a” lo que hace es “append”, es decir, añadir el texto al final del archivo. 
# Un método alternativo sería escribir echo “Hola mundo” >> hola.txt, pero en este caso si el archivo no existe lo que haría sería crearlo.  

echo "Hola mundo" | tee -a hola.txt
