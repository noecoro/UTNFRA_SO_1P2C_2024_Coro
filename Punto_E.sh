#!/bin/bash

echo
echo "Filtro Basico Punto_E: "

# Crear el archivo con la información de la memoria y el chasis
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

# Agreg  título "Chassis Information"
echo "Chassis Information" >> RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

# Agreg fabricante del chasis
sudo dmidecode -t chassis | grep "Manufacturer" >> RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

echo
echo "Muestro archivo: "
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
echo

