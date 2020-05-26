for f in ./*.pdf; do ocrmypdf "$f" "$(basename "$f" ".pdf")_ocr.pdf"; done
