<?php
// 19/10/2010 - Vitor Pacheco
if($perms->CheckAccess('adm',A_ACCESS,true))
$theme->ClearContent();
$navbar->AddOption('Valor Depreciado no Período', 'adm', 'main:patrimonio:repDepreciacaoPorNumero');
$form = $MIOLO->GetUI()->GetForm($module,'frmRepDepreciacaoPorNumero', '', 'patrimonio');
$theme->InsertContent($form);
$a = $context ? $context->ShiftAction() : 'main';
$handled = $MIOLO->InvokeHandler($module,$a);
?>
