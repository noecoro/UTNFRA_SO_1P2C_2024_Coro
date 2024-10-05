#!/bin/bash
echo
echo "Filtro Basico Punto_E: "
# Crear los directorios si no existen 01 - 02 (error)
mkdir -p RTA_ARCHIVOS_Examen_20241001

# Crear el archivo con la información de la memoria y el chasis
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt

# Agregar título "Chassis Information"
echo "Chassis Information" >> RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt

# Agregar fabricante del chasis
sudo dmidecode -t chassis | grep "Manufacturer" >> RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
echo
echo "Muestro archivo: "
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
echo

