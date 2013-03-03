#!/bin/bash

echo "Enviando Município"

localHost="/var/www/sigaadm/miolo/modules/"
sigaDemo="/var/www/miolo/modules/"

arquivo[0]="biblioteca/handlers/admin.inc"
arquivo[1]="biblioteca/handlers/admin/municipioBiblioteca.inc"
arquivo[2]="biblioteca/handlers/admin/municipioBibliotecaFind.inc"
arquivo[3]="biblioteca/forms/municipioBiblioteca/frmMunicipio.class"
arquivo[4]="biblioteca/forms/municipioBiblioteca/frmMunicipioFind.class"
arquivo[5]="biblioteca/forms/municipioBiblioteca/js/frmMunicipio.js"
arquivo[6]="biblioteca/grids/gridMunicipio.class"
arquivo[7]="common/classes/lookup.class"
arquivo[8]="common/classes/municipio.class"

for ((i = 0; i < ${#arquivo[@]}; i++)) 
do

sshpass -p '' scp -P 3509 -o StrictHostKeyChecking=no $localHost${arquivo[$i]} root@200.128.35.9:$sigaDemo${arquivo[$i]} && echo "root@200.128.35.9:$sigaDemo${arquivo[$i]}";

done

