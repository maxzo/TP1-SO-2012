#!/bin/bash

dirActual=$(pwd)

directorio=$(echo $1 | awk 'BEGIN {FS="/"}; {print $NF}')
nombre="$directorio"_$(date +"%d-%m-%Y")_$(date +"%H-%M").tgz
echo $nombre

cd $1
cd ..
tar -pczf $nombre $directorio
mv $nombre /tmp

read -p "¿Desea programar el backup para que se ejecute los viernes? (S/N): " respuesta
if [ $respuesta = 'S' ] || [ $respuesta = 's' ] ; then
	archivo=tarea$(date +"%d-%m-%Y")-$(date +"%H-%M").sh
	mkdir /home/$(whoami)/tareas 2> /dev/null
	echo "#!/bin/bash" > /home/$(whoami)/tareas/$archivo
	echo "" >> /home/$(whoami)/tareas/$archivo
	echo "nombre="$directorio"_\$(date +\"%d-%m-%Y\")_\$(date +\"%H-%M\").tgz" >> /home/$(whoami)/tareas/$archivo
	echo "cd $1" >> /home/$(whoami)/tareas/$archivo
	echo "cd .." >> /home/$(whoami)/tareas/$archivo
	echo "tar -pczf \$nombre $directorio" >> //home/$(whoami)/tareas/$archivo
	echo "mv \$nombre /tmp" >> /home/$(whoami)/tareas/$archivo
	chmod 777 /home/$(whoami)/tareas/$archivo
	
	crontab -l 2> /dev/null > tabla
	echo "* * * * 5 /home/$(whoami)/tareas/$archivo" >> tabla
	cat tabla | crontab -
	rm tabla
fi
