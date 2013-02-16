<?
$home = 'main:admin';
$navbar->AddOption('Senha',$module,$self);
$ui = $MIOLO->GetUI();
if ($MIOLO->GetConf('options.authmd5'))
{
   $form = $ui->GetForm($module,'frmPasswordMD5');
}
else
{
   $form = $ui->GetForm($module,'frmPassword');
}
$theme->InsertContent($form);
?>
