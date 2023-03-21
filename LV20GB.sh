#!/bin/bash
#Descripción: Script para configurar un LVM de 20GB estrictamente con 4 discos
#Autor:
#Version: 1.0
#Fecha de creación:
#Paquetes necesarios: lvm2, gdisk, mkfs

. funciones

# root
f_comprobarroot
# internet
f_conexion
# paquetes
f_existepaquete
# deteccion discos
f_comprobar_part
# vg01
f_crearvg
#lv20gb
f_crearlv
