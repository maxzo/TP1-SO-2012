#!/bin/bash

echo -e "\nIngrese el nombre del directorio 1: "
read dir1
mkdir $1/$dir1
echo -e "\nIngrese el nombre del directorio 2: "
read dir2
mkdir $1/$dir2

for i in {1..10}
do
	read renglon
	echo -e $renglon
done < /etc/passwd > $1/$dir1/archivo1.txt

tail -5 /etc/passwd > $1/$dir2/archivo2.txt

lineas=0
while read renglon;
do
	echo -e $renglon
	let lineas=lineas+1
done < /etc/passwd > $1/archivo3.txt
echo "El archivo contiene $lineas lineas"
