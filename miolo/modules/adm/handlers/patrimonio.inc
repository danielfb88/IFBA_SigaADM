<?php
    $ui = $MIOLO->GetUI();
    $navbar->AddOption('Patrimônio','adm','main:patrimonio');
    $close = $MIOLO->GetActionURL($module,'main');
    $panel = new ActionPanel('pnlAdTables','Patrimônio','',$close);
    $panel->SetIconType('large');
    $panel2 = new ActionPanel('pnlAdTables','Relatórios','',$close);
    $panel2->SetIconType('large');

	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens Patrimoniais', $ui->GetImageTheme('','icons/itens_patrimoniais.png'),$module,'main:itempatrimonio:find');
	$panel->AddUserAction('adm_patrimonio', A_EXECUTE, 'Baixa em bloco', $ui->GetImageTheme('','icons/itens_patrimoniais.png'),$module, 'main:baixabloco:find');
	$panel->AddUserAction('adm_patrimonio', A_EXECUTE, 'Transferir em bloco', $ui->GetImageTheme('','icons/itens_patrimoniais.png'),$module, 'main:transferirbloco:find');

	//comentado para ser avaliado a necessidade
	//$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Empenhos Anos Anteriores', $ui->GetImageTheme('','default.png'),$module,'main:financeiro:empenho2006');
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por Empenho', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTermo');
	//linhas implementadas
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por Numero', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTermoPorNumero');
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por Setor', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repIPorSetor');	
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por Responsável', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTermoPorResponsavel');	
	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Relatório de Movimentação de Bens Móveis', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repBalancete');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Aquisições no Período', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repAquisicoesPorPeriodo');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Aquisições por Setor no Período', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repAquisicoesPorSetorPeriodo');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens por Empenho', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repItensPorEmpenho');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens por Setor', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repItensPorSetor');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens por Classificador', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repItensPorClassificador');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Classificador', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTotaisPorClassificador');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Classificador no Período', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTotaisPorClassificadorPeriodo');

//	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Setor', $ui->GetImageTheme('adm','icons/relatorio.png'),$module,'main:patrimonio:repTotaisPorSetor');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Baixas no Período', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repBaixasPorPeriodo');

	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Classificador por Elemento de Despesa', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repClassificadorPorElemento');
	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Inventário', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repInventario');

	// 19/10/2010 - Vitor Pacheco
	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Depreciação por Contas Contábeis',$ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repDepreciacaoPorContaContabil');
	$panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Depreciação por Número',$ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repDepreciacaoPorNumero');

	 $panel2->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsáveis pelos Setores', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repResponsaveisSetor');
	$theme->AppendContent($panel);
	$theme->AppendContent($panel2);

    $action = $context->ShiftAction();
    switch($action)
    {
        case 'repTermo':
            $MIOLO->InvokeHandler($module, 'patrimonio/repTermo');
            break;
        case 'repBalancete':
            $MIOLO->InvokeHandler($module, 'patrimonio/repBalancete');
            break;
        case 'repAquisicoesPorPeriodo':
            $MIOLO->InvokeHandler($module, 'patrimonio/repAquisicoesPorPeriodo');
            break;
        case 'repAquisicoesPorSetorPeriodo':
            $MIOLO->InvokeHandler($module, 'patrimonio/repAquisicoesPorSetorPeriodo');
            break;
        case 'repItensPorEmpenho':
            $MIOLO->InvokeHandler($module, 'patrimonio/repItensPorEmpenho');
            break;
		case 'repIPorSetor':
        	$MIOLO->InvokeHandler($module, 'patrimonio/repIPorSetor');
        	break;
        case 'repItensPorSetor':
            $MIOLO->InvokeHandler($module, 'patrimonio/repItensPorSetor');
            break;	
        case 'repItensPorClassificador':
            $MIOLO->InvokeHandler($module, 'patrimonio/repItensPorClassificador');
            break;
        case 'repTotaisPorClassificador':
            $MIOLO->InvokeHandler($module, 'patrimonio/repTotaisPorClassificador');
            break;
        case 'repTotaisPorClassificadorPeriodo':
            $MIOLO->InvokeHandler($module, 'patrimonio/repTotaisPorClassificadorPeriodo');
            break;
//      case 'repTotaisPorSetor':
//          $MIOLO->InvokeHandler($module, 'patrimonio/repTotaisPorSetor');
//          break;
        case 'repBaixasPorPeriodo':
            $MIOLO->InvokeHandler($module, 'patrimonio/repBaixasPorPeriodo');
            break;
        case 'repClassificadorPorElemento':
            $MIOLO->InvokeHandler($module, 'patrimonio/repClassificadorPorElemento');
            break;
        case 'repTermoPorNumero':
           $MIOLO->InvokeHandler($module, 'patrimonio/repTermo2');
        break;
        case 'repTermoPorResponsavel':
           $MIOLO->InvokeHandler($module, 'patrimonio/repTermoPorResponsavel');
        break;
        // 19/10/2010 - Vitor Pacheco
        case 'repDepreciacaoPorContaContabil':
            $MIOLO->InvokeHandler($module, 'patrimonio/repDepreciacaoPorContaContabil');
            break;
        case 'repDepreciacaoPorNumero':
            $MIOLO->InvokeHandler($module, 'patrimonio/repDepreciacaoPorNumero');
            break;    
	case 'repInventario':
            $MIOLO->InvokeHandler($module, 'patrimonio/repInventario');
        break;
	case 'repResponsaveisSetor':
            $MIOLO->InvokeHandler($module, 'patrimonio/repResponsaveisSetor');
        break;
    }
?>
