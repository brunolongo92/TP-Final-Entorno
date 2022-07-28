FROM debian:latest

ADD textoPrueba.txt /home/brunolongo/TP-Final-Entorno/Dockerfile/textoPrueba.txt
ADD wordStats.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/wordStats.sh
ADD AnalizadorDeTexto.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/AnalizadorDeTexto.sh
ADD statsUsageWords.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/statsUsageWords.sh
ADD findNames.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/findNames.sh
ADD statsSentences.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/statsSentences.sh
ADD blankLinesCounter.sh /home/brunolongo/TP-Final-Entorno/Dockerfile/blankLinesCounter.sh

COPY ./AnalizadorDeTexto.sh /
COPY ./wordStats.sh /
COPY ./textoPrueba.txt /
COPY ./statsUsageWords.sh /
COPY ./findNames.sh /
COPY ./statsSentences.sh /
COPY ./blankLinesCounter.sh /


ENTRYPOINT ["/AnalizadorDeTexto.sh"]
