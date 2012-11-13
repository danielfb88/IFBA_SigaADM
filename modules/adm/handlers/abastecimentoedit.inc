<?
$theme->ClearContent();
$ui = $MIOLO->GetUI();
$objRequisicao = $MIOLO->GetBusiness('adm','requisicao',$item);
$id = Form::GetFormValue('id');
$objRequisicao->abastecimento = $id;
$form = $ui->GetForm($module,'frmAbastecimento', $objRequisicao);
if ($theme->GetContent()  == '')
{
	$theme->InsertContent($form);
}
?>
