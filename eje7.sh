#!/bin/bash

cd $1
ls | sort
echo ""
if [ $(ls -d c* 2> /dev/null | wc -w) -ne 0 ] ; then
	echo "Existen archivos que comienzan con la letra c"
else
	echo "No existen archivos que comiencen con la letra c"
fi
