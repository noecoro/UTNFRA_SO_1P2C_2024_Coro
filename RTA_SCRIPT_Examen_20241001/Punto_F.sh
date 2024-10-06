#!/bin/bash

echo
echo "Filtro Avanzado: "
#20241002
mkdir -p ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002

# IP pública y guardar en archivo txt Filtro_Avanzado.txt
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

# nombre de usuario y agregar
echo "Mi usuario es: $(whoami)" >> ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

# hash agregar al archivo
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}')" >> ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

#URL del repo y agregar al archivo
echo "La URL de mi repositorio es: $(git remote get-url origin)" >> ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

echo
echo "Muestro archivo ok: "
cat ../RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo
