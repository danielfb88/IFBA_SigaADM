<?
    if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
    $navbar->AddOption('Inventário', 'adm', 'main:patrimonio:repItensAtivos');
    $form = $MIOLO->GetUI()->GetForm($module,'frmRepInventario', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
