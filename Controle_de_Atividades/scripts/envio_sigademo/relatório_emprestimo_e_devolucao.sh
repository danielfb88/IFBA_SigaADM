#!/bin/bash

echo "Enviando de Relatório Empréstimo/Devolução - Data 04/03/2013"

localHost="/var/www/sigaadm/miolo/modules/"
sigaDemo="/var/www/miolo/modules/"

arquivo[0]="biblioteca/reports/Ticket1_Devolucao_UI.jasper"
arquivo[1]="biblioteca/reports/Ticket1_Devolucao_UI.jrxml"
arquivo[2]="biblioteca/reports/Ticket1_Emprestimo_UI.jasper"
arquivo[3]="biblioteca/reports/Ticket1_Emprestimo_UI.jrxml"

for ((i = 0; i < ${#arquivo[@]}; i++)) 
do

sshpass -p '' scp -P 3509 -o StrictHostKeyChecking=no $localHost${arquivo[$i]} root@200.128.35.9:$sigaDemo${arquivo[$i]} && echo "root@200.128.35.9:$sigaDemo${arquivo[$i]}";

done
