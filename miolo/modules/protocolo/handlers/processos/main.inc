<?
    // permissões
    $perms->CheckAccess('PROT_USR',A_ACCESS,'');
    
    // variáveis
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    
    //Verifica se foi passado paramêtros para exclusão de arquivos anexados
    if(!is_numeric($item))
    {
	 //Separa o número do processo do nome do arquivo 
	 $params = explode("item=", $item);
	 $item = $params[0];
	 //Chama o formulário frmProcessoArquivos para realizar a exclusão
	 $form = $MIOLO->GetUI()->GetForm($module,'frmProcessoArquivos',$params,'processos');
    }
    // instancia o objeto processo
    $objProcesso = $MIOLO->GetBusiness('protocolo','processo',$item);
    // barra de navegação
    $navbar->AddOption(ucwords(strtolower($objProcesso->numProcessoFormatado())), 'protocolo', 'main:processos:main',$item);
    // insere o formulário frmProcesso
    $form = $MIOLO->GetUI()->GetForm($module,'frmProcesso',$objProcesso,'processos');
    $theme->InsertContent($form);

    // invoca o handler
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
