#!/bin/bash

#Le pasa como argumento un archivo de texto y lo pasa a otro que usa
#para ordenar las palabras, luego las cuenta

TEXTO=$(cat $1)
FILE=$(cat salida.txt)

for palabra in $TEXTO 
do 
  echo $palabra | tr -d [".",","] >> salida.txt
done

LARGA=0
CORTA=2
PROMEDIO=0

for palabra in $FILE
do
  if [ ${#palabra} -gt $LARGA ]
  then
    LARGA=${#palabra}
  fi
  if [ ${#palabra} -lt $CORTA ]
  then
    CORTA=${#palabra}
  fi
  PROMEDIO=$(($PROMEDIO + ${#palabra}))
done

PROMEDIO=$(($PROMEDIO/$(wc -l < salida.txt)))

echo "La palabra más larga tiene "$LARGA "letras."
echo "La palabra más corta tiene "$CORTA "letras."
echo "En promedio las palabras tienen "$PROMEDIO "letras."


