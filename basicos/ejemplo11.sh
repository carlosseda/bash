#!/bin/bash

#En este ejemplo hacemos lo mismo que en el anterior, pero igual como en el ejemplo 7 se mostraba que podemos pasar parámetros a un script, 
#ahora se enseña que podemos pasar parámetros a una función. Para ello sólo tenemos que llamar a la función por su nombre, 
#en este caso “file_count” dejar un espacio y a continuación escribir aquello que queramos pasar como parámetro a la función, por ejemplo “/etc” y “/var”. 
#Un parámetro se recoge dentro de la función como en el ejemplo 7, si solo hemos pasado uno entonces con $1. 
#Por tanto, en este ejemplo la primera vez que se llama a la función “file_count /etc” el valor de $1 será /etc, 
#la segunda vez que se llama a la función “file count /var” el valor de $1 será /var   

function file_count()
   {
      local CARPETA=$1
      CONTAR_ARCHIVOS=$(ls $CARPETA|wc -l)
      echo "$CARPETA"
      echo "$CONTAR_ARCHIVOS"
   }

file_count /etc
file_count /var

