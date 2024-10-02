#!/bin/bash

# Definir el disco manualmente
DISCO="/dev/sdc"
echo "Particiono el disco: $DISCO"
echo

# Crear las particiones en el disco
sudo fdisk $DISCO <<EOF
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e
4


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1016M
w
EOF

echo
echo "Mis Particiones: "
sudo fdisk -l $DISCO
echo

# Formatear las particiones creadas
echo "Formateo las Particiones: "
for i in $(seq 1 11); do
    sudo mkfs.ext4 ${DISCO}${i} 2>/dev/null
done

# Montar las particiones en las carpetas correspondientes
echo "Monto las Particiones: "
sudo mount ${DISCO}1 /Examenes-UTN/alumno_1/parcial_1
sudo mount ${DISCO}2 /Examenes-UTN/alumno_1/parcial_2
sudo mount ${DISCO}3 /Examenes-UTN/alumno_1/parcial_3
sudo mount ${DISCO}5 /Examenes-UTN/alumno_2/parcial_1
sudo mount ${DISCO}6 /Examenes-UTN/alumno_2/parcial_2
sudo mount ${DISCO}7 /Examenes-UTN/alumno_2/parcial_3
sudo mount ${DISCO}8 /Examenes-UTN/alumno_3/parcial_1
sudo mount ${DISCO}9 /Examenes-UTN/alumno_3/parcial_2
sudo mount ${DISCO}10 /Examenes-UTN/alumno_3/parcial_3
sudo mount ${DISCO}11 /Examenes-UTN/profesores

echo
echo "Valido montaje: "
df -h | grep Examenes-UTN

# Agregar las entradas al archivo /etc/fstab para hacer las particiones persistentes en el próximo reinicio
echo "Actualizando /etc/fstab para hacer las particiones persistentes..."
sudo bash -c 'cat <<EOL >> /etc/fstab
/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0
/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0
/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0
/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0
/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0
/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0
/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0
/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0
/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0
/dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0
EOL'

echo "Script finalizado correctamente."

