<?
	$theme->ClearContent();
	$ui = $MIOLO->GetUI();
	//var_dump('here');
	$form = $ui->GetForm('adm','frmPatrimonioID',NULL,'patrimonio');
	$theme->InsertContent($form);
?>
