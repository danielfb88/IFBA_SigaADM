#!/bin/bash

echo "Enviando Gerencia de Usuario"

localHost="/var/www/sigaadm/miolo/modules/"
sigaDemo="/var/www/miolo/modules/"

arquivo[0]="biblioteca/forms/frmUsuario.class"
arquivo[1]="biblioteca/classes/usuario.class"

for ((i = 0; i < ${#arquivo[@]}; i++)) 
do

sshpass -p '' scp -P 3509 -o StrictHostKeyChecking=no $localHost${arquivo[$i]} root@200.128.35.9:$sigaDemo${arquivo[$i]} && echo "root@200.128.35.9:$sigaDemo${arquivo[$i]}";

done
