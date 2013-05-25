<?
$perms->CheckAccess('BIB_CATALOGACAO',A_ACCESS,true);
$theme->ClearContent();
$ui = $MIOLO->GetUI();
$navbar->AddOption('Importacao IFMS', $module, 'main:catalogacao:importacao');
$form = $ui->GetForm($module,'frmImportacaoNovo');
$theme->InsertContent($form);
?>
