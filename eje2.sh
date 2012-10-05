#!/bin/bash

echo "Bienvenido, usuario: $(whoami)"
echo "Usted se ha conectado el día: $(date +"%d/%m/%Y")"
echo "En la terminal: $(tty)"
echo "Se encuentran conectados en este momento, los siguientes usuarios:"
who | awk '{ print $1 }'

