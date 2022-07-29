#!/bin/bash

FILE=textoPrueba.txt #archivo de texto a analizar

select func in wordStats.sh statsUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh #selecciona funcionalidad y pasa como argumento a FILE
do
bash $func $FILE
done
