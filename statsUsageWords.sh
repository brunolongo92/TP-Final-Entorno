#!/bin/bash

#Le pasa como argumento un archivo de texto y lo pasa a otro que usa
#para ordenar las palabras, luego las cuenta

touch salida.txt

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

for palabra in $FILE
do
  grep $palabra salida3.txt | head -1 >> salida4.txt
done

echo "Cantidad y nombre de las 10 palabras mas usadas en el texto:"
sort --uniq --reverse salida4.txt | head -n 10

