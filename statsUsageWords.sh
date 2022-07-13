#!/bin/bash

#Le pasa como argumento un archivo de texto y lo pasa a otro que usa
#para ordenar las palabras, luego las cuenta

TEXTO=$(cat $1)
FILE=$(cat salida.txt)

for palabra in $TEXTO 
do 
  if [ ${#palabra} -gt 3 ]
  then
  echo $palabra | tr -d [".",","] >> salida.txt
  grep -o -i $palabra salida.txt | wc -l >> salida2.txt
  fi
done

(sort --reverse <(paste -d ":" salida2.txt salida.txt)) >> salida3.txt
FILE2=$(cat salida3.txt)

VAR=$(3)

for linea in $FILE2
do
  echo ${linea} | cut -c1-1
done

rm salida2.txt salida.txt salida3.txt
