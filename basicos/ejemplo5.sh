#!/bin/bash

#En este ejemplo tenemos un array “ALUMNOS”, un array es una palabra que contiene varios valores, donde cada valor se separa con un espacio. 
#Debemos fijarnos que en el ejemplo 2 la palabra “FRASE” era una variable que decía “Hola Mundo” 
#¿en qué se diferencia una variable y un array si en los dos ejemplos estamos usando espacios? La diferencia se encuentra en como accedemos al valor. 
#En el ejemplo 2 usamos echo y eso hace que salga en pantalla toda la frase “Hola Mundo”, 
#en cambio en este ejemplo lo que hacemos es usar un bucle “for” que lo que hará es ir palabra por palabra. 
#El bucle “for” empieza con el comando “for ALUMNO in $ALUMNOS”, el cual significa que $ALUMNOS es el array que queremos recorrer con el bucle 
#y ALUMNO es el nombre que tendrá cada valor del array al que se accede en cada vuelta del bucle. 
#El bucle recorrerá todos los valores del array y en cada vuelta “ALUMNO” equivaldrá a la posición donde se encuentre el bucle, 
#esto significa: que en la primera vuelta del bucle ALUMNO equivale a rocio, en la segunda vuelta ALUMNO equivale a jaime, 
#en la tercera vuelta ALUMNO equivale a manu, en la cuarta vuelta ALUMNO equivale a Ismael  y en la quinta vuelta ALUMNO equivale a sergio.
#El bucle “for” continua escribiendo el comando “do” que se cierra con “done”, todo lo que escribamos dentro de esas dos palabras es lo que se ejecutará en cada vuelta del bucle, 
#en este caso dentro de “do” y “done” estamos haciendo un echo que escribirá en pantalla el valor de ALUMNO en cada vuelta. 

ALUMNOS="rocio jaime manu ismael sergio"

for ALUMNO in $ALUMNOS
  do
    echo $ALUMNO
  done
