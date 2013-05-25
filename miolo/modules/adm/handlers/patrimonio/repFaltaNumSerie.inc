<?
   if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
   // $navbar->AddOption('Falta nº Série', 'adm', 'main:patrimonio:repFaltaNumSerie');
    $form = $MIOLO->GetUI()->GetForm($module,'frmRepFaltaNumSerie', '', 'patrimonio');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
