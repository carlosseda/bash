#!/bin/bash

#En este ejemplo utilizamos el comando sed, que lo que hace es sustituir una cadena de texto por otra nueva en un archivo concreto. 
#Empezaremos el texto que queremos sustituir con una /  el nuevo texto lo comenzaremos con otra / y finalizaremos con una nueva /
#¡Importante! En caso de que la cadena de texto que queramos sustituir contenga una / entonces tendremos que poner delante una \  
# sed -i “s/\/var\/www\/html/\/var\/www\/proyecto/” hola.txt

sed -i 's/Hola mundo/Adios mundo/' hola.txt
