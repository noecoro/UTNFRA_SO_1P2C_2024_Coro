whoami
ls
ls -l
tail -f/var/log/dmesg
sudo tail -f/var/log/dmesg
sudo tail -f /var/log/dmesg
journalctl -fk
journalctl -fk | grep -i nic
sudo apt install tree
tree
pwd
ls
ls -l
tree
mkdir clase4
tree
cd clase4
ls
mkdir practica
ls
cd practica
touch archivo1.txt
ls -l
cp archivo1.txt archivo2.txt 
ls
rm -i archivo1.txt
ls
mv archivo2.txt /home/osboxes/clase4
ls
cd cd ..
cd ..
ls
rmdir practica
ls
w
last
mkdir facturas pedidos
tree
mkdir -p cliente/{facturas,pedidos}
tree
mkdir -p {clientes,proveedores}/{facturas,pedidos}
tree
rm -r cliente
tree
mkdir -p contactos/{clientes,proveedores}/{facturas,pedidos}
tree
mkdir -p coro_1/contactos/{clientes,proveedores}/{facturas,pedidos}
tree
mkdir -p coro_2/{mama/hijo{1..3},papa/{ahijado,jijo{1..3}}}
tree
rm -r coro_2
mkdir -p coro_2/{mama/hijo{1..3},papa/{ahijado,hijo{1..3}}}
tree
clear
cat /proc/cpuinfo
cat /proc/cpuinfo | grep -i proce
cat /proc/cpuinfo | grep -i proce | awk '{print}'
cat /proc/cpuinfo | grep -i proce | awk '{print$2}'
cat /proc/cpuinfo | grep -i proce | awk '{print$3}'
cat /proc/cpuinfo | grep -i proce | awk -F ':' '{print$2}'
nproc
cat /etc/passwd
cat /etc/passwd | grep osboxes
cat /etc/shadow
sudo cat /etc/shadow
cat /etc/group
sudo su
sudo groupadd Alumnos
tail /etc/group
sudo useradd -m -s /bin/bash -c "Alumno pepe" -G Alumnos pepe
ls /home/
id pepe
id
ls -l
passwd pepe
sudo passwd pepe
sudo tail /etc/shadow
su pepe
su - pepe
grep pepe /etc/shadow | awk-F ':' '{print $2}'
sudo grep pepe /etc/shadow | awk-F ':' '{print $2}'
sudo grep pepe /etc/shadow | awk -F ':' '{print $2}'
sudo useradd-m-s /bin/bash-c "usuario juan" -p "$(sudo grep pepe /etc/shadow | awk -F ':' '{print $2}')" juan
sudo useradd -m -s /bin/bash-c "usuario juan" -p "$(sudo grep pepe /etc/shadow | awk -F ':' '{print $2}')" juan
ls -l
sudo grep -E 'pepe|juan' /etc/shadow | awk -F ':' '{print $2}'
cat /etc/passwd
usermod -s /bin/sh pepe
sudo usermod -s /bin/sh pepe
cat /etc/passwd
exit
sudo apt update
sudo apt install -y manpages-es
sudo localectl set-locale LANG=es_AR.UTF-8
locale
man man
sudo apt install language-pack-es
sudo localectl set-locale LANG=es_AR.UTF-8
man man
exit
ls
ls -l
cd Documents
ls
echo "buenos dias" > saludo1.txt
echo "los dias semana" > saludo2.txt
echo "buenas noches" > saludo3.txt
ls -l
find -name "*.txt" | xarg grep "dias"
echo "los dias del mes" > saludo4
find -name "*.txt"
find -name "*.txt" | xargs grep "dias"
find -name "*.txt" | xargs grep "saludo"
find -name "*.txt" |  grep "saludo"
find -name "*.txt" | xargs cat
cd ..
clear
pwd
sudo cat /etc/sudoers
vim /etc/sudoers
sudo vim /etc/sudoers
sudo apt install vim
vim --version
sudo vim /etc/sudoers
sudo visudo
ls -l /etc/sudoers.d
which chown
which chmod
cd Documents
ls -l
chown pepe saludo4
sudo chown pepe saludo4
ls -l
sudo chown :pepe saludo4
ls -l
whoami
echo "chau" >> saludo4
sudo echo "chau" >> saludo4
cd ..
ls -l
sudo chown pepe:pepe Documents
ls -l
sudo chown -R osboxes:osboxes Documents/
ls -l
ls -l Documents/
cd Documents
clear
ls -l
chmod o+w saludo4
ls -l
chmod g-w saludo4
ls -l
chmod u+x saludo4
ls -l
chmod u-x saludo4
ls -l
chmod g+w,o-w saludo4
ls -l
chmod 777 saludo4
ls -l
chmod 764 saludo4
ls -l
chmod 664 saludo4
ls -l
cd ..
ls -l
chmod -R 640 Documents/
sudo chmod -R 640 Documents/
ls -l
sudo ls -l Documents/
clear
pwd
ls -l/home
ls -l /home
cd pepe
cd /home/pepe
sudo cd /home/pepe
cd /home/pepe
sudo chmod 754 /home/pepe
sudo chmod 754 /home/pepe/
ls -l
cd /home/pepe
ls -l /home/pepe
su pepe
su - pepe
pwd
sudo chow osboxes:osboxes /home/pepe/textopepe.txt 
sudo chown osboxes:osboxes /home/pepe/textopepe.txt 
ls -l
ls -l /home/pepe/
sudo ls -l /home/pepe/
mkdir clase5
ls -l
cd clase5
touch practica1.txt
touch practica2.txt
ls -l
chmod 600 practica1.txt
ls -l
chmod 444 practica2.txt
ls -l
echo "linea" >> practica2.txt
sudo echo "linea" >> practica2.txt
chmod 644 practica2.txt
ls -l
echo "linea" >> practica2.txt
cat practica2.txt
cd ..
ls -l
chmod -R 777 clase5/
ls -l
ls -l clase5
cd clase5
ls -l
chmod 666 *.txt
ls -l
exit
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
fdisk -l
fdisk
sudo fdisk
sudo apt install gparted
sudo gparted
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
sudo fdisk -l
sudo mkfs -t ext4 /dev/sdb1
sudo mkfs -t ext4 /dev/sdb2 && sudo mkfs -t ext4 /dev/sdb3
sudo mkdir -p /mnt/parte{1..3}
sudo ls -l /mnt/
sudo mount /dev/sdb1 /mnt/parte1
lsblk -f
sudo mount /dev/sdb2 /mnt/parte2
sudo mount /dev/sdb3 /mnt/parte3
lsblk -f
df -h
ls -l
pwd
whoami
echo "ls -l" > script1
cat script1 
bashs script1 
bash script1 
echo "pwd" > script2
cat script2
echo "whoami" >> script2
cat script2
bash script2
vim script3.sh
ls -l
./script3.sh
sudo ./script3.sh
sudo chmod 764 scritp3.sh
sudo chmod 764 script3.sh
ls -l
./script3.sh 
ls -l
cd carpeta1/
ls -l
nano script4.sh
cat script4.sh 
chmod 764 script4.sh 
ls -l
./script4.sh 
vim primerif.sh
cd ..
fdisk -l
sudo fdisx -l
sudo fdisk -l
sudo fdisk /dev/sdb
sudo fdisk
sudo fdisk -l
lsblk -f
sudo mkdir -p /mnt/parte{5..6}
tree /mnt
sudo mkfs.ext4 /dev/sdb5
sudo mkfs.ext4 /dev/sdb6
lsblk -f
sudo mount /dev/sdb1 /mnt/parte1
sudo mount /dev/sdb2 /mnt/parte2
sudo mount /dev/sdb3 /mnt/parte3
sudo mount /dev/sdb5 /mnt/parte5
sudo mount /dev/sdb6 /mnt/parte6
lsblk -f
cat /etc/fstab
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0"
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0" | sudo tee -a /etc/fstab"
echo "/dev/sdb1 /mnt/parte1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb2 /mnt/parte2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb3 /mnt/parte3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb5 /mnt/parte5 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/sdb6 /mnt/parte6 ext4 defaults 0 0" | sudo tee -a /etc/fstab
sudo mount -a
cat /etc/fstab
exit
sudo lsblk
sudo - juan
cat /etc/passwd
sudo adduser juan
sudo fdisk -l | grep "2 G"
sudo fdisk -l | grep "2 G" | awk '{print $2}' | awk -F ":" '{print $1}'
DISCO=$(sudo fdisk -l | grep "2 G" | awk '{print $2}' | awk -F ":" '{print $1}')
echo $DISCO
sudo fdisk $DISCO
free 
free | grep "Mem" | awk '{print $2}'
free | grep "Mem"
free | grep "Mem" | awk '{print $2}'
MEMO=$(free | grep "Mem" | awk '{print $2}')
echo $MEMO
exit
git version
tree --version
git --version
mkdir repogit
ls -l
cd repogit/
cd repogit
cd ..
cd repogit
pwd
cd ..
[200~cd $HOME/repogit
cd $HOME/repogit
pwd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
ssh-keygen -t ed25519 -C "coronoelia@gmail.com"
cat ~/.ssh/id_ed25519.pub
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
git clone https://github.com/noecoro/UTNFRA_SO_1P2C_2024_Coro.git
git clone git@github.com:noecoro/UTNFRA_SO_1P2C_2024_Coro.git
ls -l
cd UTN-FRA_SO_Examenes/
LS -L
ls -l
cd ..
cd ~/repogit/UTN-FRA_SO_Examenes/202410
./script_Precondicion.sh ~/.bashrc && history -a
./script_Precondicion.sh
source ~/.bashrc && history -a
tree ~/repogit/UTNFRA_SO_1P2C_2024_Coro
vim ~/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
cd ..
mkdir -p /Examenes-UTN/{alumno_{1,2,3}/parcial_{1,2,3},profesores}
sudo mkdir -p /Examenes-UTN/{alumno_{1..3}/parcial_{1..3},profesores}
tree Ex
sudo tree /Examenes-UTN
chmod 755 /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
sudo /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro/RTA_SCRIPT_Examen_20241001/Punto_A.sh
ls -l
sudo tree /Examenes-UTN
cd /home/osboxes/repogit/UTNFRA_SO_1P2C_2024_Coro
git add RTA_SCRIPT_Examen_20241001/Punto_A.sh
git commit -m "feat: Punto A estructura simétrica"
git config --global user.name "noecoro"
git config --global user.email "coronoelia@gmail.com"
git commit -m "feat: Punto A estructura simétrica"
git push origin main
sudo fdisk -l
vim Punto_B.sh
sudo parted /dev/sdc print
vim Punto_B.sh
chmod 755 Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc*
vim Punto_B.sh
sudo ./Punto_B.sh
sudo umount /dev/sdc1
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo umount /dev/sdc1
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
cat /etc/fstab
df -h | grep /Examenes-UTN
vim Punto_B.sh
sudo ./Punto_B.sh
cat /etc/fstab
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
sudo umount /dev/sdc2
sudo umount /dev/sdc3
sudo umount /dev/sdc5
sudo umount /dev/sdc6
sudo umount /dev/sdc7
sudo umount /dev/sdc8
sudo umount /dev/sdc9
sudo umount /dev/sdc10
vim Punto_B.sh
sudo umount /Examenes-UTN/alumno_1/parcial_1
sudo umount /Examenes-UTN/alumno_1/parcial_2
sudo umount /Examenes-UTN/alumno_1/parcial_3
sudo umount /Examenes-UTN/alumno_2/parcial_1
sudo umount /Examenes-UTN/alumno_2/parcial_2
sudo umount /Examenes-UTN/alumno_2/parcial_3
sudo umount /Examenes-UTN/alumno_3/parcial_1
sudo umount /Examenes-UTN/alumno_3/parcial_2
sudo umount /Examenes-UTN/alumno_3/parcial_3
sudo umount /Examenes-UTN/profesores
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo sfdisk --delete /dev/sdc
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
cat /etc/fstab
sudo vim /etc/fstab
sudo fdisk /dev/sdc
cat /etc/fstab
sudo systemctl daemon-reload
sudo mount -a
sudo fdisk /dev/sdc
sudo mount -a
sudo fdisk -l /dev/sdc
sudo mount /dev/sdc11 /Examenes-UTN/profesores
sudo mkfs.ext4 /dev/sdc11
sudo mount /dev/sdc11 /Examenes-UTN/profesores
df -h | grep Examenes-UTN
vim Punto_B.sh
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo umount /dev/sdc1
sudo umount /dev/sdc2
sudo umount /dev/sdc3
sudo umount /dev/sdc5
sudo umount /dev/sdc6
sudo umount /dev/sdc7
sudo umount /dev/sdc8
sudo umount /dev/sdc9
sudo umount /dev/sdc10
sudo umount /dev/sdc11
sudo fdisk -l /dev/sdc
vim Punto_B.sh
sudo ./Punto_B.sh
vim Punto_B.sh
sudo ./Punto_B.sh
sudo fdisk -l /dev/sdc
df -h | grep /dev/sdc
lsblk
realpath Punto_B.sh
history
find ~ -name "Punto_B.sh"
ls -l
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_SCRIPT_Examen_20241001/
LS -L
ls -l
vim Punto_B.sh
cat Punto_B
cat Punto_B.sh
git status
git add Punto_B.sh
git commit -m "Script de particiones en Punto_B.sh"
git push
ls -l
vim Punto_C.sh
chmod 755 Punto_C.sh
ls -l Punto_B.sh
ls -l Punto_C.sh
chmod 755 Punto_B.sh
ls -l Punto_B.sh
git add Punto_B.sh
git commit -m "Permiso de ejecución para Punto_B.sh"
git push
ls -l
vim Punto_C.sh 
grep osboxes /etc/shadow | awk -F ':' '{print $2}'
sudo grep osboxes /etc/shadow | awk -F ':' '{print $2}'
vim Punto_C.sh
./Punto_C.sh 
ls -l
cat Punto_C.sh 
getent group p1c2_2024_gAlumno
getent group p1c2_2024_gProfesores
getent passwd p1c2_2024_A1
getent passwd p1c2_2024_A2
getent passwd p1c2_2024_A3
getent passwd p1c2_2024_P1
groups p1c2_2024_A1
groups p1c2_2024_A2
groups p1c2_2024_A3
groups p1c2_2024_P1
ls -ld /Examenes-UTN/alumno_1
ls -ld /Examenes-UTN/alumno_2
ls -ld /Examenes-UTN/alumno_3
ls -ld /Examenes-UTN/profesores
ls -l /Examenes-UTN/alumno_1/validar.txt
ls -l /Examenes-UTN/alumno_2/validar.txt
ls -l /Examenes-UTN/alumno_3/validar.txt
ls -l /Examenes-UTN/profesores/validar.txt
sudo ls -ld /Examenes-UTN/alumno_1
sudo ls -ld /Examenes-UTN/alumno_2
sudo ls -ld /Examenes-UTN/alumno_3
sudo ls -ld /Examenes-UTN/profesores
sudo ls -l /Examenes-UTN/alumno_1/validar.txt
sudo ls -l /Examenes-UTN/alumno_2/validar.txt
sudo ls -l /Examenes-UTN/alumno_3/validar.txt
sudo ls -l /Examenes-UTN/profesores/validar.txt
cd ..
cd .
cd ..
cd ...
cd ..
pwd
cd ~
pwd
mkdir -p /Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
sudo mkdir -p /Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree /Estructura_Asimetrica/
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --column 4
sudo apt-get install tree
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 90 --columns=4
tree Estructura_Asimetrica/ --noreport | column
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
tree /Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
cd home/osboxes
cd /home
cd /osboxes
cd osboxes
cd /home/osboxes
pwd
mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
ls -l
cd repo
cd repogit/
ls -l
cd UTNFRA_SO_1P2C_2024_Coro/
LS -L
ls -l
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
cd ..
cd RTA_SCRIPT_Examen_20241001/
ls -l
chmod 755 Punto_D.sh
vim Punto_D
ls -l
vim Punto_D.sh 
git status
git add Punto_D.sh
git commit -m "Estructura- script del Punto D"
git push origin main
vim Punto_C.sh 
git add Punto_C.sh
git commit -m "Usuarios- script del Punto C"
git push origin main
vim Punto_B.sh 
git status
git add Punto_B.sh
git commit -m "Particiones script del Punto_B"
git push origin main
cd ..
ls -l
cd RTA_ARCHIVOS_Examen_20241001/
ls -l
mkdir -p RTA_ARCHIVOS_Examen_$(date +%Y%m%d)
grep MemTotal /proc/meminfo > RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
sudo dmidecode -t chassis | grep Manufacturer >> RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
cat RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
ls -l
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
cat Filtro_Basico.txt 
tree RTA_ARCHIVOS_Examen_20241001/
cd ..
tree RTA_ARCHIVOS_Examen_20241001/
ls -l
tree --noreport
vim RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
sudo dmidecode -t chassis
vim RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
./ RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
vim RTA_ARCHIVOS_Examen_$(date +%Y%m%d)/Filtro_Basico.txt
ls -l
cd RTA_ARCHIVOS_Examen_20241002/
ls -l
cd ..
cat RTA_ARCHIVOS_Examen_20241001/
cat RTA_ARCHIVOS_Examen_20241001/Filtro_Basico.txt
ls -l RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh
chmod 755 Punto_E.sh
./Punto_E.sh
sudo chmod 755 Punto_E.sh
./Punto_E.sh
sudo ./Punto_E.sh
ls -l
ls RTA_ARCHIVOS_Examen_20241001/
ls RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
./Punto_E.sh 
vim Punto_E.sh 
./Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
./Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
vim Punto_E.sh 
cat RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt
./Punto_E.sh 
git status
git add Punto_E.sh 
git commit -m "Script Punto_E.sh con filtro de memoria y chasis"
git push
git add RTA_ARCHIVOS_Examen_20241001/
git commit -m "RTA_ARCHIVOS Punto_E.sh"
git push
git status
gti add RTA_SCRIPT_Examen_20241001/Punto_E.sh 
git add RTA_SCRIPT_Examen_20241001/Punto_E.sh 
git commit -m "RTA_SCRIPT_Examen_20241001 Punto_E.sh"
git push
ls -l
ls RTA_ARCHIVOS_Examen_20241001/
ls RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
cd RTA_SCRIPT_Examen_20241001/
ls -l
vim Punto_F.sh 
chmod 755 Punto_F.sh
./Punto_F.sh 
sudo apt-get update
sudo apt-get install curl
./Punto_F.sh 
ls -l
vim Punto_E.sh 
chmod 755 Punto_E.sh
./Punto_E.sh 
ls -l RTA_ARCHIVOS_Examen_20241001/
cd ..
ls -l RTA_ARCHIVOS_Examen_20241001/
ls -l RTA_ARCHIVOS_Examen_20241001/RTA_ARCHIVOS_Examen_20241002/
ls -l
ls -l RTA_SCRIPT_Examen_20241001/
vim Punto_E.sh 
LS -L
ls -l
touch README.md
vim README.md
ls -l
git add README.md 
git commit -m "README para inscripción"
git push
vim README.md
git add README.md 
git commit -m "README para inscripcion"
git push
history -a
vim ~/.bash_history
cp ~/bash_history ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
cd ~/bash_history ~/repogit/UTNFRA_SO_1P2C_2024_Coro/
