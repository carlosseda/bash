#!/bin/bash

#Lo mismo que el ejemplo 13, pero esta vez preguntamos al usuario que extensión de archivo quiere cambiar mediante el comando “read” visto en el ejemplo 6.

cd /home/nonem/fotos
DAY=$(date +%F)s

echo "Diga que extension de archivo quiere cambiar:"
   read EXTENSION

for NAME in *.$EXTENSION
 do
   echo "Renombrando $NAME por ${DAY}-${NAME}"
   mv $NAME ${DAY}-${NAME}
 done
