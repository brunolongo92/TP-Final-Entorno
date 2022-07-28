FROM debian:latest

ADD textoPrueba.txt /home/bruno/textoPrueba.txt 
ADD wordStats.sh /home/bruno/wordStats.sh
ADD AnalizadorDeTexto.sh /home/bruno/AnalizadorDeTexto.sh
ADD statsUsageWords.sh /home/bruno/statsUsageWords.sh
ADD findNames.sh /home/bruno/findNames.sh
ADD statsSentences.sh /home/bruno/statsSentences.sh
ADD blankLinesCounter.sh /home/bruno/blankLinesCounter.sh

COPY ./AnalizadorDeTexto.sh /

ENTRYPOINT ["/AnalizadorDeTexto.sh"]
