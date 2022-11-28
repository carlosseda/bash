#!/bin/bash

#En este ejemplo enseñamos lo que es un condicional, el cual se puede definir como una instrucción que se puede ejecutar o no dependiendo si cumple una condición. 
#El condicional empieza con “if” y termina con “fi”, todo lo que se escriba dentro de estas dos palabras estarán dentro del condicional. 
#La condición que se evaluará debe estar entre corchetes, debemos vigilar que los corchetes tengan un espacio antes y después para que el condicional funcione. 
#Dentro de la condición evaluaremos si es verdad que se cumple algo, 
#en este caso evaluaremos si la variable “FILE” que es la ruta a un archivo que hemos creado previamente tiene permisos de ejecución, 
#para ello usaremos el parámetro “-x” que dentro de la condición de un condicional lo que hace es comprobar si el archivo tiene permisos de ejecución. 
#Para ver otros parámetros que podemos usar podemos consultar: https://www.shellscript.sh/quickref.html
#A continuación podemos decir que si la condición se cumple queremos que el script haga algo, 
#en este caso usamos “then” y la siguiente línea será la instrucción que el script lanzará. Si no se cumpliera la condición podemos decir que haga otra cosa, para ello usaremos el “else”. 

FILE="/home/nonem/ejemplo1.sh"

if [ -x "$FILE" ]
  then
	echo "Tienes permiso para ejecutar $FILE"

  else
	echo "No tienes permiso para ejecutar $FILE"
fi
