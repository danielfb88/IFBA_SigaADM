<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    $navbar->AddOption('Baixa Em Bloco', 'adm', 'main:itempatrimonio:find');
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    $form = $ui->GetForm('adm', 'frmPatrimonioBaixaBloco', 'NULL', 'patrimonio');
    $theme->InsertContent($form);
?>




