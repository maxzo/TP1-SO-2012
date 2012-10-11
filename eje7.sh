#!/bin/bash

cd $1
ls | sort
echo ""
if [ $(ls -d c* | wc -w -ne 0 ] ; then
	echo "Existen archivos que comienzan con la letra c"
else
	echo "NO existen archivos que comiencen con la letra c"
fi
