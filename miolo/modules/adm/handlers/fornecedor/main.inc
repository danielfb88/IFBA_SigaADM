<?
	if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
    $fornecedor = $MIOLO->GetUI();
    $objfornecedor = $MIOLO->GetBusiness('adm','fornecedor', $item);
    $navbar->AddOption($objfornecedor->nome, 'adm', 'main:fornecedor:main');
    $form = $MIOLO->GetUI()->GetForm($module,'frmFornecedorFind', $objfornecedor, 'fornecedor');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>