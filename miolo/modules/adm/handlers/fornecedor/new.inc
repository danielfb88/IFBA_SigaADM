<?
	$theme->ClearContent();
	$ui = $MIOLO->GetUI();
	$navbar->AddOption('Novo Fornecedor', 'adm', 'main:fornecedor:new');
	$form = $ui->GetForm('adm','frmFornecedorNew',NULL,'fornecedor');
	$theme->InsertContent($form);
?>
