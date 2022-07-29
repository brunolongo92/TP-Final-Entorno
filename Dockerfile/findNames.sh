#!/bin/bash

touch salida.txt salida2.txt   #archivos auxiliares

TEXTO=$(cat $1)
FILE=$(cat salida.txt)

for palabra in $TEXTO 
do 
  if [ ${#palabra} -gt 3 ]
  then
  echo $palabra | tr -d [".",","] >> salida.txt     #remueve signos ortográficos usuales
  grep -o '\<[A-Z][a-z]*\>' salida.txt >> salida2.txt   #filtra con expresión regular que inicie con MAYUSC
  fi
done

echo "Las palabras en mayúscula del texto son:"
sort --uniq salida2.txt   #filtra repetidos y ordena alfabeticamente

rm salida.txt salida2.txt
