#!/bin/bash

if [ $3 -gt 0 ] ; then
	sort $1 > $2
	echo "" >> $2
	echo "Cantidad de líneas: $(wc -l < $2)" >> $2
	echo "Cantidad de palabras: $(wc -w < $2)" >> $2
	echo "Cantidad de caracteres: $(wc -m < $2)" >> $2
	
	for ((i = 1; i < $3 ; i++)) ; do
		echo "" >> $2
		sort $1 >> $2
		echo "" >> $2
		echo "Cantidad de líneas: $(wc -l < $2)" >> $2
		echo "Cantidad de palabras: $(wc -w < $2)" >> $2
		echo "Cantidad de caracteres: $(wc -m < $2)" >> $2
	done
fi

