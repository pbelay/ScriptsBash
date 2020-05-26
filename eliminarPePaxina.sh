#!/bin/bash

#-----------------------------
# Autor: Pablo Belay
#-----------------------------
# Eliminar pe de paxina a un pdf
#-----------------------------
# Dependencias que precisas ter instaladas 
# #QPDF 
# sudo apt-get install -y qpdf
# #pdfcrop
# sudo apt-get install texlive-extra-utils  

FILES=incomingpdf/
for f in $FILES*
do
  echo "Procesando ${f} ficheiro... \n"
   #Eliminanos a protección
   qpdf  --decrypt ${f} temporal.pdf 
   
   #borramos o ficheiro 
   rm $f 
   
   #quitamos o pe de paxina coa licenza
   pdfcrop --margins '0 0 0 -29' temporal.pdf recortado.pdf
   #Insertamos un espazo en branco equivalente
   pdfcrop --margins '0 0 0 29' recortado.pdf $f
   
   #limpiar
   rm temporal.pdf recortado.pdf
  
   #OCR 
   #ocrmypdf "$f" "$(basename "$f" ".pdf")_ocr.pdf"
   #ocrmypdf "$f" '$FILES$(basename "$f" ".pdf")_ocr.pdf'
done
