echo " [hola. selecciona una opcion: ].upper()"
echo "	1: crear directorio"
echo "	2: crear archivo en directorio"
echo "	3: eliminar archivo de directorio"
echo "	4: eliminar directorio"

read prueba

case $prueba in
	1) mkdir "has creado un directorio" ; echo "directorio creado" ;;
	2) touch "nuevo archivo" ;echo "has creado un archivo en el directorio";;
	3) rm "nuevo archivo"; echo "has eliminado un archivo";;
	4) rmdir "has creado un directorio"; echo "has eliminado un directorio";;
	*) " opcion no valida";;
esac
