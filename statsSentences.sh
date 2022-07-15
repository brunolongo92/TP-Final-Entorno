#!/bin/bash

FILE=$(cat $1)

OIFS=$IFS
IFS='.'

LARGA=0
PROMEDIO=0
CORTA=1000

for oracion in $FILE
do
    echo "${#oracion}" >> salida.txt
done

for oracion in $FILE
do
  if [ ${#oracion} -gt $LARGA ]
  then
    LARGA=${#oracion}
  fi
  if [ ${#oracion} -lt $CORTA ]
  then
    CORTA=${#oracion}
  fi
  PROMEDIO=$(($PROMEDIO + ${#oracion}))
done

PROMEDIO=$(($PROMEDIO/$(wc -l < salida.txt)))

echo "La oración más larga tiene "$LARGA "letras."
echo "La oración más corta tiene "$CORTA "letras."
echo "En promedio las oraciones tienen "$PROMEDIO "letras."

IFS=$OIFS
unset OIFS

rm salida.txt
