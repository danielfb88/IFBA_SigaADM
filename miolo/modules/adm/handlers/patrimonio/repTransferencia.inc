<?
	if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
	$navbar->AddOption('Relatório de Transferência', 'adm', 'main:patrimonio:repTransferencia');
	$form = $MIOLO->GetUI()->GetForm($module,'frmRepTransferencia', '', 'patrimonio');
	/*echo '<pre>';
	print_r($form);
	echo '</pre>';*/
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
