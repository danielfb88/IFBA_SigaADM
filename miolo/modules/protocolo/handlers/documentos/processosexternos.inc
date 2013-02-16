<?
	echo "TESTE";

	global $MIOLO;	

	$report = new MJasperReport('sigaept');

	$parameters['SUBREPORT_DIR']  = $MIOLO->GetConf('home.modules');
    $parameters['int_pIdUsuario']	= $MIOLO->login->idkey;
	$parameters['pURL']		= $MIOLO->GetConf('home.url');

    $report->Execute('protocolo', 'ProcessosExternos', $parameters);        

?>
