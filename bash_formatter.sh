#!/bin/bash
echo -ne "[+] Bienvenido al formateador de texto extraido de pdf's. Este programa elimina\nlos saltos de linea y los guiones para que el texto quede continuo.\n Presione Ctrl+d para terminar...\n\nIntroducir texto a formatear: "
text=$(</dev/stdin)
echo -e "\nSalida de texto:\n"
echo $text | sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/ /g' | sed 's/]/µ/g' | sed 's/- //g'