<?

$navbar->AddOption('Dados pessoais',$module,$self);
$ui = $MIOLO->GetUI();
$form = $ui->GetForm($module,'frmDadosPessoais');
$theme->InsertContent($form);
?>
