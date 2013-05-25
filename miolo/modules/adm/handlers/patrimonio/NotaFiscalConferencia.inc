<?

var_dump('handlers/patrimonio/NotaFiscalConferia.inc');
exit();
	if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
	$navbar->AddOption('Itens por Nota Fiscal', 'adm', 'main:patrimonio:notaFiscalConferencia');
	$form = $MIOLO->GetUI()->GetForm($module,'frmNotaFiscalConferencia', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
