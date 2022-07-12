#!/bin/bash

#Delimitador
IFS=' '

#toma cada linea e imprime las palabras en salida.txt
for (( i=1; i<=3; i++ ))
do
  read -a palabra <<< $(sed -n $i\p $1)
  echo "${palabra[@]}" | tr [",",".",[:space:]]  '\n' >> salida.txt
done


