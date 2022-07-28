#!/bin/bash

touch salida.txt
TEXTO=$(cat $1)

for palabra in $TEXTO
do
  echo $palabra | tr -d [".",","] >> salida.txt
done

LARGA=0
CORTA=2
PROMEDIO=0

for palabra in salida.txt
do
  if [ ${#palabra} -gt $LARGA ]
  then
    LARGA=$(( ${#palabra} + 1 ))
  fi
  if [ ${#palabra} -lt $CORTA ]
  then
    CORTA=${#palabra}
  fi
  PROMEDIO=$(($PROMEDIO+${#palabra}))
done

echo $PROMEDIO

PROMEDIO=$(($PROMEDIO/$(wc -l < salida.txt)))

cat salida.txt
echo wc -l < salida.txt
echo $PROMEDIO

echo "La palabra más larga tiene "$LARGA "letras."
echo "La palabra más corta tiene "$CORTA "letras."
echo "En promedio las palabras tienen "$PROMEDIO "letras."

rm salida.txt
