#!/bin/bash

cd $1 &> errores.txt
echo "" >> errores.txt

more $1 &>> errores.txt
echo "" >> errores.txt

sort $1 &>> errores.txt
echo "" >> errores.txt

date $1 &>> errores.txt
echo "" >> errores.txt

cat errores.txt
