<?
    if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
    $navbar->AddOption('Responsáveis pelos setores', 'adm', 'main:patrimonio:repResponsaveisSetor');
    $form = $MIOLO->GetUI()->GetForm($module,'frmRepResponsaveisSetor', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
