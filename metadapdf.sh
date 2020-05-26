#!/bin/bash
for i in  *.pdf
do
 echo "------  $i"
 pdfinfo $i >  "$(basename "$i" ".pdf")_info.txt"

 echo  "ExifTool" >>   "$(basename "$i" ".pdf")_info.txt"
 exiftool $i >>   "$(basename "$i" ".pdf")_info.txt"

 echo "sha512: " >>  "$(basename "$i" ".pdf")_info.txt"
 sha512sum $i >>  "$(basename "$i" ".pdf")_info.txt"
 echo "--------------------------------------------"
done
