<?
    // variáveis
	$theme->ClearContent();
	$ui = $MIOLO->GetUI();
    
    // insere formulário frmProcessosFind
	$form = $ui->GetForm($module,'frmProcessosFind',NULL,'processos');
	$theme->InsertContent($form);
?>

