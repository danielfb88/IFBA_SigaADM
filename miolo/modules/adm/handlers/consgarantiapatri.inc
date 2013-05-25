<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    $navbar->AddOption('Garantia', 'adm', 'main:itempatrimonio:find');
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    $form = $ui->GetForm('adm', 'frmConsPatrimonioGarantia', 'NULL', 'patrimonio');
    $theme->InsertContent($form);
	
	//var_dump('AQUI');
	//EXIT();
?>
