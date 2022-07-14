#!/bin/bash

#Le pasa como argumento un archivo de texto y lo pasa a otro que usa
#para ordenar las palabras, luego las cuenta
touch salida.txt salida2.txt

TEXTO=$(cat $1)
FILE=$(cat salida.txt)

for palabra in $TEXTO 
do 
  if [ ${#palabra} -gt 3 ]
  then
  echo $palabra | tr -d [".",","] >> salida.txt
  grep -o '\<[A-Z][a-z]*\>' salida.txt >> salida2.txt
  fi
done

echo "Las palabras en mayúscula del texto son:"
sort --uniq salida2.txt

rm salida.txt salida2.txt
