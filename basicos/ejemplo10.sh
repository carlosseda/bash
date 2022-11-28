#!/bin/bash

#En este ejemplo se presenta lo que son las funciones. Una función nos ahorra tener que escribir código, esto quiere decir que escribimos el código una vez (a esto se llama “declarar la función”) 
#y luego podemos ejecutar ese código una y otra vez solo “llamando a la función”.  
#Primero tenemos que declarar una función, eso se hace escribiendo la palabra “function” seguido del nombre que queramos darle a la función, 
#en este caso “file_count”, luego añadimos al final del nombre elegido un paréntesis que abre y cierra, 
#y finalmente dejamos un espacio y abrimos y cerramos llaves. Lo que esté dentro de las llaves será lo que realizará la función cada vez que la llamemos, 
#en este caso igual que en el ejemplo 3 estamos creando una variable “NUMERO_DE_ARCHIVOS” que va a contener el resultado de un comando “ls -l | wc -l” 
#que cuenta el número de archivos de la carpeta donde esté alojado el script. 
#Para llamar a la función solo hay que escribir su nombre, en este caso “file_count” que está escrito al final del ejemplo, 
#esto hará ejecutar el código que hay dentro de la función. 

function file_count() {
	NUMERO_DE_ARCHIVOS=$(ls -l | wc -l)
	echo "$NUMERO_DE_ARCHIVOS"
}
