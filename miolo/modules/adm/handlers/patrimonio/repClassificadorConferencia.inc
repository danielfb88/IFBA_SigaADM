<?
	if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
	$navbar->AddOption('Classificador - Conferência', 'adm', 'main:patrimonio:repClassificadorConferencia');
	$form = $MIOLO->GetUI()->GetForm($module,'frmRepClassificadorConferencia', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>