<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    $navbar->AddOption('Transferir em bloco', 'adm', 'main:itempatrimonio:find');
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    $form = $ui->GetForm('adm', 'frmPatrimonioTransferirBloco', 'NULL', 'patrimonio');
    $theme->InsertContent($form);
?>
