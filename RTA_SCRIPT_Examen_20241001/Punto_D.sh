#!/bin/bash
#osboxes@osboxes:~$ mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
#osboxes@osboxes:~$ tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
cd ~
mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}
tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --columns=4
echo "Punto_D ok"
