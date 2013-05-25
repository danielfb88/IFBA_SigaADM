<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    
	$navbar->AddOption('Atualização em Bloco', 'adm', 'main:atualizacaoembloco:find');   
	$theme->ClearContent();
    $ui = $MIOLO->GetUI();	
    $form = $ui->GetForm('adm', 'frmAtualizacaoEmBloco', 'NULL', 'patrimonio');
	
	//var_dump('AQUI1');
    $theme->InsertContent($form);
	
	//var_dump('AQUI');
	//EXIT();
?>
