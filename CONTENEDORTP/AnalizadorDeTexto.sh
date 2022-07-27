#!/bin/bash

FILE=textoPrueba.txt

select func in statsWords.sh statsUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh
do
bash $func $FILE
done
