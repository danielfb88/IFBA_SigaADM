<?
$theme->ClearContent();
$ui = $MIOLO->GetUI();
$navbar->AddOption('Manutenção',$module,'main:manutencao');
$navbar->AddOption('Altera Material de Requisicao', $module, $self);
$form = $ui->GetForm($module,'frmAlteraMaterialRequisicao','');
$theme->InsertContent($form);
?>
