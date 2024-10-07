#!/bin/bash

# Creación de usuarios y grupos

echo "Creando grupo p1c2_2024_gAlumno..."
sudo groupadd p1c2_2024_gAlumno

echo "Creando grupo p1c2_2024_gProfesores..."
sudo groupadd p1c2_2024_gProfesores

# Creación de usuarios con clave igula q osboxes 
echo "Creando usuario p1c2_2024_A1..."
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A1
# Hash de la clave para p1c2_2024_A1: $y$j9T$qhEBRUgELZ6aUXPI0/aEx/$hxyNAbxfwvhkceqg/IHmYlGcZk9dItipuurCa2pA0l9
echo "p1c2_2024_A1:$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" | sudo chpasswd -e

echo "Creando usuario p1c2_2024_A2..."
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A2
# Hash de la clave para p1c2_2024_A2: $y$j9T$qhEBRUgELZ6aUXPI0/aEx/$hxyNAbxfwvhkceqg/IHmYlGcZk9dItipuurCa2pA0l9
echo "p1c2_2024_A2:$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" | sudo chpasswd -e

echo "Creando usuario p1c2_2024_A3..."
sudo useradd -m -s /bin/bash -G p1c2_2024_gAlumno p1c2_2024_A3
# Hash de la clave para p1c2_2024_A3: $y$j9T$qhEBRUgELZ6aUXPI0/aEx/$hxyNAbxfwvhkceqg/IHmYlGcZk9dItipuurCa2pA0l9
echo "p1c2_2024_A3:$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" | sudo chpasswd -e

echo "Creando usuario p1c2_2024_P1..."
sudo useradd -m -s /bin/bash -G p1c2_2024_gProfesores p1c2_2024_P1
# Hash de la clave para p1c2_2024_P1: $y$j9T$qhEBRUgELZ6aUXPI0/aEx/$hxyNAbxfwvhkceqg/IHmYlGcZk9dItipuurCa2pA0l9
echo "p1c2_2024_P1:$(sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}')" | sudo chpasswd -e

# Ajustar permisos para carpetas, asignar propietarios y grupos.
echo "Ajustando permisos y propietarios"

# Para /Examenes-UTN/alumno_1
sudo chown -R p1c2_2024_A1:p1c2_2024_gAlumno /Examenes-UTN/alumno_1
sudo chmod -R 750 /Examenes-UTN/alumno_1

# Para /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A2:p1c2_2024_gAlumno /Examenes-UTN/alumno_2
sudo chmod -R 760 /Examenes-UTN/alumno_2

# Para /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_A3:p1c2_2024_gAlumno /Examenes-UTN/alumno_3
sudo chmod -R 700 /Examenes-UTN/alumno_3

# Para /Examenes-UTN/profesores
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores
sudo chmod -R 775 /Examenes-UTN/profesores

# Creo archivo validar.txt en cada carpeta
echo "Creo archivo validar.txt en cada carpeta"
sudo su -c "whoami > /Examenes-UTN/alumno_1/validar.txt" p1c2_2024_A1
sudo su -c "whoami > /Examenes-UTN/alumno_2/validar.txt" p1c2_2024_A2
sudo su -c "whoami > /Examenes-UTN/alumno_3/validar.txt" p1c2_2024_A3
sudo su -c "whoami > /Examenes-UTN/profesores/validar.txt" p1c2_2024_P1

echo "Script del Punto C ok"

