#!/bin/bash

#En este ejemplo usamos una variable que la podemos definir como una palabra que guardará un valor. 
#Primero escribimos el nombre de la variable, es indiferente que la escribamos en mayúsculas o minúsculas, 
#pero por lo general cuando escribimos scripts las ponemos en mayúsculas para distinguirlas visualmente. 
#En este caso la variable es “FRASE”. A continuación escribimos el símbolo “=” sin dejar espacios. 
#Finalmente escribimos el valor que queremos que guarde la variable, podemos guardar cualquier cosa (una frase, un resultado, una ruta…), 
#cualquier valor que queramos usar en otro momento de nuestro código, en este caso “Hola mundo”. 
#Para acceder al valor de la variable (en este caso “Hola Mundo”) solo tenemos que escribir el nombre de la variable precedido del símbolo $. 
#Por tanto, por un lado tenemos el nombre de la variable (“FRASE”) y por otro el valor de la variable (“Hola Mundo”). 

FRASE="Hola Mundo"

echo $FRASE
