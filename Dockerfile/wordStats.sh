#!/bin/bash

touch salida.txt #archivos auxiliares 
TEXTO=$(cat $1) 

for palabra in $TEXTO
do
  echo $palabra | tr -d [".",",",":","-"] >> salida.txt #para remover signos ortográficos usuales
done

LARGA=0
CORTA=1000
PROMEDIO=0
LISTA=$(cat salida.txt) 

for palabra in $LISTA #recorrerá las palabras y guardará los valores de las variables definidas
do
  if [ ${#palabra} -gt $LARGA ]
  then
    LARGA=$(( ${#palabra} + 1 ))
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

rm salida.txt
