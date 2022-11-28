#!/bin/bash

# En este ejemplo vamos a ver que cada vez que ejecutamos un comando en Linux (por ejemplo “apt install”), 
# el comando cuando termina nos devuelve un valor de salida “exit”. “exit” puede ser 0 o 1, 
# si es 0 significa que el comando ha sido ejecutado con éxito, 
# si es 1 el comando no ha sido ejecutado con éxito. 
# En este caso lanzamos el comando “cat /etc/shadow” y a continuación mediante un condicional comprobamos si la respuesta que nos da el comando ($?) es igual (-eq) a 0, 
# si se cumple la condición entonces significa que el comando ha sido ejecutado con éxito, sino es que no ha sido ejecutado con éxito. 
# Esta comprobación es útil en scripts que requieren lanzar muchos comandos, 
# podemos comprobar después de cada comando si ha sido ejecutado con éxito, y si no fuera el caso interrumpir el script escribiendo “exit 1”. 

cat /etc/shadow

if [ "$?" -eq "0" ]
   then
      echo "Comando ejecutado con éxito"
      exit 0

   else
      echo "El comando fallo"
      exit 1
fi
