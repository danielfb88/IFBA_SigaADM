<?
	if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
	$navbar->AddOption('Responsabilidade por Responsavel', 'adm', 'main:patrimonio:repTermoPorResponsavel');
	$form = $MIOLO->GetUI()->GetForm($module,'frmRepTermoPorResponsavel', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
