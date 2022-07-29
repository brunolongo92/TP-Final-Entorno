#!/bin/bash

FILE=$1

echo "Las lineas en blanco en el archivo son:" ; grep -cvP '\S' $1 #filtra cantidad de lineas en blanco
