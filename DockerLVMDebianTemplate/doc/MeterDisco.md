# Meter un disco

## Procedimiento

1. Crear el diso y meterlo en la máquina (en este caso, mediante Vagrant)
2. Asegurarse de que está y anotar el nombre mediante ```lsblk```
3. Crear una partición primaria (opciones por defecto) con ```fdisk```; el tipo, ***```8e```***
4. Crear un ***```pv```*** con ```pvcreate```
5. Extender el ***```vg```*** existente con ```vgextend ${vg} ${particion}```
6. Extender el ***```lv```*** existente con ```lvextend ${lv} ${particion}```
