<?
    $perms->checkAccess('', A_ACCESS,true);
	$theme->ClearContent();
	$ui = $MIOLO->GetUI();
	$navbar->AddOption('Incluir Pessoa','common', 'main:pessoa:main',$item);
	$form = $ui->GetForm($module,'frmPessoaNova',NULL,'pessoa');
	$theme->InsertContent($form);
?>
