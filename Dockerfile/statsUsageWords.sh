#!/bin/bash

touch salida.txt
touch salida2.txt
touch salida3.txt
touch salida4.txt

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

rm salida.txt salida2.txt salida3.txt salida4.txt 
