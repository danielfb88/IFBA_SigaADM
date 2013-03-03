#!/bin/bash

echo "Enviando Renovação de Empréstimo"

localHost="/var/www/sigaadm/miolo/modules/"
sigaDemo="/var/www/miolo/modules/"

arquivo[0]="biblioteca/classes/emprestimo.class"
arquivo[1]="biblioteca/classes/exemplar.class"
arquivo[2]="biblioteca/classes/multa.class"
arquivo[3]="biblioteca/classes/devolucao.class"
arquivo[4]="biblioteca/forms/frmRenovUsuario.class"

for ((i = 0; i < ${#arquivo[@]}; i++)) 
do

sshpass -p '' scp -P 3509 -o StrictHostKeyChecking=no $localHost${arquivo[$i]} root@200.128.35.9:$sigaDemo${arquivo[$i]} && echo "root@200.128.35.9:$sigaDemo${arquivo[$i]}";

done
