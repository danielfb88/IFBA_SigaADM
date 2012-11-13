<?
    $perms->CheckAccess('trocasenha',A_ACCESS,TRUE);
    $ui = $MIOLO->GetUI();
    $form = $ui->GetForm($module,'frmTrocaSenha');
    $theme->SetContent($form);
?>
