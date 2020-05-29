#!/bin/bash
#Autor: Pablo Belay Fernández
# Script para extraer o audio dos ficheiros mp4 e xerar o mp3 

FILES=./

for f in $FILES*
do
  fbname=$(basename "$f" .mp4)
  ffmpeg -i "${f}" -vn -ab 128k -ar 44100 -y "${fbname}.mp3";
done