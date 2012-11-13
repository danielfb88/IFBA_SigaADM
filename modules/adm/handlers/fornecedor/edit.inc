<?
	$perms->CheckAccess('adm',A_ACCESS,true);
	$theme->ClearContent();
	$ui = $MIOLO->GetUI();
	$objFornecedor = $MIOLO->GetBusiness('adm','fornecedor',$item);
	$objFornecedor->retrieveAssociation('instituicao');
	$navbar->AddOption('Editar Fornecedor - '.$objFornecedor->instituicao->nome, 'adm', 'main:fornecedor:edit');
	$form = $ui->GetForm('adm','frmFornecedorEdit',$objFornecedor,'fornecedor');
	$theme->InsertContent($form);
?>