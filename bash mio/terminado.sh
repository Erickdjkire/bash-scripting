
read  -p "antes que nada, como te llamas?: " name
echo -e  "\n\n	que buen nombre!!, Bienvenido" $name | tr '[:lower:]' '[:upper:]'

while true
do
echo -e "\n [Vamos a Jugar. ejecuta opcion x opcion: ]\n"
echo "	1: crear directorio en escritorio"
echo "	2: crear archivo en escritorio"
echo "	3: escribir algo en archivo"
echo "	4: copiar archivo dentro de carpeta"
echo "	5: eliminar archivo de escritorio"
echo "	6: eliminar directorio"
echo "	7: salir"

read prueba

case $prueba in

	1) read -p "ingresa nombre del directorio: " directorio;  mkdir "$directorio" ; echo "directorio creado en escritorio" ;;
	2) read -p "ingresa nombre de archivo: " archivo; touch "$archivo.txt" ;echo "has creado un archivo en  escritorio";;
	3) echo "ingresa texto en lineas , ctl+d para detener"; cat >> $archivo.txt;echo -e "\n\nGENIAL!! texto añadido en el archivo" ;;
	4) cp  $archivo.txt  $directorio;echo "archivo ha sido copiado al directorio antes creado";;
	5) rm "$archivo".txt; echo "has eliminado un archivo";;
	6) rmdir -r "$directorio"; echo "has eliminado un directorio";;
	7) echo "hasta luego"; exit ;;
	*) echo "hey!! '$prueba' no es una opcion no valida"
esac
done
