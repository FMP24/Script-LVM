#!/bin/bash
#Descripción: Script para configurar un LVM de 20GB estrictamente con 4 discos
#Autor:
#Version: 1.0
#Fecha de creación:
#Paquetes necesarios: lvm2, gdisk, mkfs

. ./funciones

# root
f_comprobarroot
if [ $? -eq 0 ]; then
# internet
f_conexion
  if [ $? -eq 0 ]; then
# paquetes
f_existepaquete

    if [ $? -eq 0 ]; then
# deteccion discos
f_comprobar_part

      if [ $? -eq 0 ]; then
# vg01
f_crearvg
#lv20gb
f_crearlv
        if [ $? -eq 0 ]; then
#mkfs
f_asignarsisfichc
          if [ $? -eq 0 ]; then
echo "Operacion completada existosamente"
          fi
        fi
      fi
    fi
  fi
fi
