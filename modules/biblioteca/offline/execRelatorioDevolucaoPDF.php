<?php

// var_dump($argv);
// die;
// TODO: Analizar a forma como ele recebe argumentos

// TODO: NA LINHA DE COMANDO FUNCIONA, PORÉM SE CHAMADO PELO SCRIPT EM FRMDEVOLUÇÃO NÃO FUNCIONA. 
// SERÁ QUE DEVO USAR OS CAMINHOS RELATIVOS DO FORM?

$filetype = 'PDF';
$filein = '../reports/Ticket1_Devolucao_UI.jasper';

// TODO: AQUI DEVE SER ARGUMENTO. CORRIJA DEPOIS
// $param = "str_NUMERODOTOMBO<-$exemplar";
$param = "&str_NUMERODOTOMBO<-2";
$uniqid = uniqid(md5(uniqid("")));

$fileout = $uniqid . "." . strtolower($filetype);

$pathout = '../../../miolo/var/reports/'.$fileout;
$pathMJasper = '../../../miolo/classes/extensions/jasper';


$dbUser = 'postgres';
$dbPass = 'postgres';
$jdbcDriver = 'org.postgresql.Driver';
$jdbcDb = 'jdbc:postgresql://localhost:5432/dbsigaadm';

$param = "relatorio<-$filein".$param."&fileout<-".$pathout."&filetype<-".$filetype;

$pathJava = ' /usr/lib/jvm/java-7-oracle';
$pathLog = '../../../miolo/var/log';
$fileLog = $uniqid . ".txt";

$classPath = "$pathMJasper/lib/jasperreports-4.8.0.jar:$pathMJasper/lib/commons-beanutils-1.7.jar:$pathMJasper/lib/commons-collections-2.1.jar:$pathMJasper/lib/commons-digester-1.7.jar:$pathMJasper/lib/commons-javaflow-20060411.jar:$pathMJasper/lib/commons-logging-api-1.0.2.jar:$pathMJasper/lib/itext-2.1.7.jar:$pathMJasper/lib/ojdbc14.jar:$pathMJasper/lib/iReport.jar:$pathMJasper/lib/jxl-2.6.3.jar:$pathMJasper/lib/postgresql-8.2-509.jdbc2.jar:$pathMJasper/";

$cmd = $pathJava  . "/bin/java -Djava.awt.headless=true -classpath $classPath MJasper \"{$pathMJasper}\" \"{$param}\" \"{$dbUser}\" \"{$dbPass}\" \"{$jdbcDriver}\" \"{$jdbcDb}\"";
$cmd .= " > $pathLog/$fileLog";
exec($cmd,$output);

header('Content-type: application/pdf');
header('Content-Disposition: attachment; filename="'.$pathout.'"'); // attachment é para baixar

?>