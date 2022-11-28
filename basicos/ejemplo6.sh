#!/bin/bash

#En este ejemplo se usa el comando “read” que lo que hace es recoger en una variable aquello que escriba el usuario. 
#Podemos usarlo para hacerle una pregunta y dependiendo de lo que nos escriba usar esa información para ejecutar instrucciones posteriores. 
#En este caso se recoge en la variable “FILE” la respuesta del usuario para comprobar si la ruta introducida (a un archivo o a una carpeta del sistema , por ejemplo /var/www) 
#es un archivo normal (mediante el uso del argumento -f en la condición), una carpeta (mediante el uso del argumento -d en la condición) u otro tipo de archivo. 
#Ver el ejemplo 4 si no se recuerda que es lo de usar un argumento dentro de la condición.  
#Finalmente debemos observar que a parte de “then” y “else” dentro de un condicional “if” podemos también usar “elif” que lo que hace es realizar la comprobación de una nueva condición. 

echo "Introduzca la ruta del archivo:"
read FILE

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
