#!/bin/bash

if [ $# -eq 2 ] ; then
	cd /
	if [[ -d $2 ]] ; then
		cd $2
	else
		echo "Error: Directorio inválido"
		exit
	fi
fi

if [ $1 = 'l' ] ; then
	ls -l --format=single-column
elif [ $1 = 't' ] ; then
	ls -F --classify > temp.txt
	sed -i '/temp.txt/d' temp.txt
	sed -i 's/$/ -- fichero regular/g' temp.txt
	sed -i 's/* -- fichero regular$/ -- fichero ejecutable/g' temp.txt
	sed -i 's/\/ -- fichero regular$/ -- directorio/g' temp.txt
	sed -i 's/@ -- fichero regular$/ -- enlace simbólico/g' temp.txt
	sed -i 's/| -- fichero regular$/ -- FIFO/g' temp.txt
	sed -i 's/= -- fichero regular$/ -- directorio/g' temp.txt
	cat temp.txt
	rm temp.txt
elif [ $1 = 'i' ] ; then
	ls -i
fi

#REVISAR PORQUE TIRA ESTE ERROR AL EJECUTAR
#./eje4.sh: line 13: [: =: unary operator expected
#./eje4.sh: line 15: [: =: unary operator expected
#./eje4.sh: line 26: [: =: unary operator expected
