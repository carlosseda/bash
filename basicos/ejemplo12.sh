#!/bin/bash

#En este ejemplo lo que hacemos es demostrar que podemos sintetizar una función, un read y un condicional case a la vez. 
#Con esto conseguimos que si el usuario no contesta correctamente a la pregunta se relance de nuevo. 
#Al final del comando read ponemos una palabra que hará de variable recogiendo la respuesta del usuario (response), el condicional case evalúa la respuesta, 
#y si coincide dispara el comando que hay detrás de * )

function answer() {

   read -p "¿Quieres que se puedan conectar usuarios locales? (y/n): " response
	
    case $response in
        [Yy]* ) echo “Ha respondido que si”;;
        [Nn]* ) echo “Ha respondido que no”;;
        * ) echo "Por favor, responda yes or no." 
            answer ;;
    esac
}

answer

