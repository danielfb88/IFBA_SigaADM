<?php
    // permissões
    $perms->checkAccess('PROT_USR', A_ACCESS,'');
    // barra de navegação
    $navbar->AddOption('Protocolo','protocolo','main');
    // variáveis
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    // se existir handler
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
    if (!$handled)
    {
        // insere painel de controle 
        $close = $MIOLO->GetActionURL('common','main');
        $panel = new ActionPanel('pnlProtocolo','Protocolo','',$close);
        //$panel->SetIconType('small');
        $panel->AddUserAction('PROT_USR',A_EXECUTE,'Processos',$ui->GetImageTheme('','icons/processos.png'),$module,'main:processos:find');
        $panel->AddUserAction('PROT_USR',A_EXECUTE,'Múltiplos Processos',$ui->GetImageTheme('','icons/multiplos_processos.png'),$module,'main:multiplos');
        $panel->AddUserAction('PROT_CONF',A_EXECUTE,'Configuração',$ui->GetImageTheme('','icons/configuracao.png'), $module,'main:configuracao');
// Manual Protocolo
	//	$panel->AddUserAction('adm_requisicao',A_EXECUTE,'Manuais',$ui->GetImageTheme('','icons/manuais.png'),$module,'main:manual');
        $theme->AppendContent($panel);
    } 
?>
