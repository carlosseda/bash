#!/bin/bash

#En este ejemplo hacemos lo mismo que en el anterior, pero recogemos varios parámetros que pasamos al script de una sola vez mediante $@ , 
#esto quiere decir que la palabra “FILES” será una array porque contendrá varios valores. Por ejemplo, si ejecutamos un script así:
#sudo ./nombre_del_script.sh /var/www  /etc  /home
#Al script le estamos pasando tres parámetros que son “/var/www” , “/etc” y “/home”, y esos tres parámetros los guardamos en la palabra “FILES” al usar $@
#Para recorrer los tres valores de “FILES”, debemos usar un bucle for como en el ejemplo 5. Dentro del bucle, entre “do” y “done” repetiremos el proceso de comprobación del ejemplo 7.

FILES=$@

for FILE in $FILES
  do
    if [ -f "$FILE" ]
      then
        echo "$FILE is un archivo normal"
    elif [ -d "$FILE" ]
      then
        echo "$FILE es una carpeta"
    else
        echo "$FILE es otro tipo de archivo"
    fi
    
    ls -l $FILE
done
