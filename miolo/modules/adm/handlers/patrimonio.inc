<?php
    $ui = $MIOLO->GetUI();
    $navbar->AddOption('Patrimônio','adm','main:patrimonio');
    $close = $MIOLO->GetActionURL($module,'main');
    $panel = new ActionPanel('pnlAdTables','Patrimônio','',$close); 
    $panel->SetIconType('large');
	
	$panel_garantia = new ActionPanel('pnlAdTables','Garantias','',$close); 
    $panel_garantia->SetIconType('large');
	
	$panel_respons = new ActionPanel('pnlAdTables','Termos de responsabilidade','',$close); 
    $panel_respons->SetIconType('large');
    
	$panel_relat_contabil = new ActionPanel('pnlAdTables','Relatórios contábeis','',$close);
    $panel_relat_contabil->SetIconType('large');
	
	$panel_relat = new ActionPanel('pnlAdTables','Relatórios','',$close);
    $panel_relat->SetIconType('large');
	
	/*
	echo '<pre>';
	print_r ('MODULO DE PATRIMONIO TEMPORARIAMENTE EM MANUTENCAO');
	echo '</pre>';
	exit();
	*/

	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,  'Consulta por número patrimonial', $ui->GetImageTheme('','icons/patrimonio.png'),$module,'main:itempatrimonioid:find');
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,  'Consulta bens patrimoniais', $ui->GetImageTheme('','icons/itens_patrimoniais.png'),$module,'main:itempatrimonio:find');
	$panel->AddUserAction('adm_patrimonio', A_EXECUTE, 'Baixar em bloco', $ui->GetImageTheme('','icons/patrimonio_baixa_bloco.png'),$module, 'main:baixabloco:find');
	$panel->AddUserAction('adm_patrimonio', A_EXECUTE, 'Transferir em bloco', $ui->GetImageTheme('','icons/patrimonio_transferir_bloco.png'),$module, 'main:transferirbloco:find');
	$panel->AddUserAction('adm_patrimonio', A_EXECUTE, 'Atualizar em bloco', $ui->GetImageTheme('','icons/patrimonio_atualizar_bloco.png'),$module, 'main:atualizacaoembloco:find');	
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,  'Administrar classificadores',$ui->GetImageTheme('','icons/classificador.png'),$module,'main:classificador:find');
	$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Dependência',$ui->GetImageTheme('','icons/dependencia.png'),$module, 'main:dependencia:find');
	
	$panel_garantia->AddUserAction('adm_patrimonio', A_EXECUTE, 'Administrar garantias', $ui->GetImageTheme('','icons/patrimonio_garantia.png'),$module, 'main:garantiapatri:find');
	$panel_garantia->AddUserAction('adm_patrimonio', A_EXECUTE, 'Consultar garantias', $ui->GetImageTheme('','icons/patrimonio_garantia.png'),$module, 'main:consgarantiapatri:find');
	

	//comentado para ser avaliado a necessidade
	//$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Empenhos Anos Anteriores', $ui->GetImageTheme('','default.png'),$module,'main:financeiro:empenho2006');
	
	//Desabilitar momentaneamente o relatório de Responsabilidade por empenho
	//$panel->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por Empenho', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repTermo');
	//linhas implementadas
	
	$panel_respons->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsáveis pelos setores', $ui->GetImageTheme('','icons/patrimonio_responsaveis_setores.png'),$module,'main:patrimonio:repResponsaveisSetor');
	$panel_respons->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por número', $ui->GetImageTheme('','icons/patrimonio_responsabilidade_numero.png'),$module,'main:patrimonio:repTermoPorNumero');
	$panel_respons->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por setor', $ui->GetImageTheme('','icons/patrimonio_responsabilidade_setor.png'),$module,'main:patrimonio:repIPorSetor');	
	$panel_respons->AddUserAction('adm_patrimonio',A_EXECUTE,'Responsabilidade por responsável', $ui->GetImageTheme('','icons/patrimonio_responsabilidade_responsavel.png'),$module,'main:patrimonio:repTermoPorResponsavel');	
	
	$panel_relat_contabil->AddUserAction('adm_patrimonio',A_EXECUTE,'Depreciação por Contas Contábeis',$ui->GetImageTheme('','icons/patrimonio_depreciacao.png'),$module,'main:patrimonio:repDepreciacaoPorContaContabil');
	
	$panel_relat_contabil->AddUserAction('adm_patrimonio',A_EXECUTE,'Depreciação por Número',$ui->GetImageTheme('','icons/patrimonio_depreciacao.png'),$module,'main:patrimonio:repDepreciacaoPorNumero');
	
	$panel_relat_contabil->AddUserAction('adm_patrimonio',A_EXECUTE,'Relatório de Movimentação de Bens Móveis', $ui->GetImageTheme('','icons/patrimonio_movimentacaobens.png'),$module,'main:patrimonio:repBalancete');
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Bens que faltam Nº Série', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:repFaltaNumSerie');
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Inventário', $ui->GetImageTheme('','icons/patrimonio_inventario.png'),$module,'main:patrimonio:repInventario');
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Empenho - Conferência', $ui->GetImageTheme('','icons/patrimonio_empenho_conferencia.png'),$module,'main:patrimonio:repItensPorEmpenho');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Nota Fiscal - Conferência', $ui->GetImageTheme('','icons/relatorio.png'),$module,'main:patrimonio:notaFiscalConferencia');	
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Transferências', $ui->GetImageTheme('','icons/patrimonio_transferir_bloco.png'),$module, 
	//'main:patrimonio:repTermoPorResponsavel');	
	'main:patrimonio:repTransferencia');	
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Aquisições no Período', $ui->GetImageTheme('','icons/patrimonio_aquisicoes.png'),$module,'main:patrimonio:repAquisicoesPorPeriodo');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Aquisições por Setor no Período', $ui->GetImageTheme('','icons/patrimonio_aquisicoes.png'),$module,'main:patrimonio:repAquisicoesPorSetorPeriodo');

	

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens por Setor', $ui->GetImageTheme('','icons/patrimonio_responsabilidade_setor.png'),$module,'main:patrimonio:repItensPorSetor');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Classificador - Conferência', $ui->GetImageTheme('','icons/patrimonio_classificador.png'),$module,'main:patrimonio:repClassificadorConferencia');
	
	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Itens por Classificador', $ui->GetImageTheme('','icons/patrimonio_classificador.png'),$module,'main:patrimonio:repItensPorClassificador');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Classificador', $ui->GetImageTheme('','icons/patrimonio_classificador.png'),$module,'main:patrimonio:repTotaisPorClassificador');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Classificador no Período', $ui->GetImageTheme('','icons/patrimonio_classificador.png'),$module,'main:patrimonio:repTotaisPorClassificadorPeriodo');

//	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Totais por Setor', $ui->GetImageTheme('adm','icons/relatorio.png'),$module,'main:patrimonio:repTotaisPorSetor');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Baixas no Período', $ui->GetImageTheme('','icons/patrimonio_baixa_bloco.png'),$module,'main:patrimonio:repBaixasPorPeriodo');

	$panel_relat->AddUserAction('adm_patrimonio',A_EXECUTE,'Classificador por Elemento de Despesa', $ui->GetImageTheme('','icons/patrimonio_elementodesp.png'),$module,'main:patrimonio:repClassificadorPorElemento');
	
	$theme->AppendContent($panel);
	$theme->AppendContent($panel_garantia);
	$theme->AppendContent($panel_respons);
	$theme->AppendContent($panel_relat_contabil);
	$theme->AppendContent($panel_relat);
	
	
    

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
        case 'notaFiscalConferencia':
            $MIOLO->InvokeHandler($module, 'patrimonio/notaFiscalConferencia');
            break;
		case 'repIPorSetor':
        	$MIOLO->InvokeHandler($module, 'patrimonio/repIPorSetor');
        	break;
        case 'repItensPorSetor':
            $MIOLO->InvokeHandler($module, 'patrimonio/repItensPorSetor');
            break;	
		case 'repClassificadorConferencia':
            $MIOLO->InvokeHandler($module, 'patrimonio/repClassificadorConferencia');
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
		case 'repTransferencia':
           $MIOLO->InvokeHandler($module, 'patrimonio/repTransferencia');
        break;
        // 19/10/2010 - Vitor Pacheco
        case 'repDepreciacaoPorContaContabil':
            $MIOLO->InvokeHandler($module, 'patrimonio/repDepreciacaoPorContaContabil');
            break;
        case 'repDepreciacaoPorNumero':
            $MIOLO->InvokeHandler($module, 'patrimonio/repDepreciacaoPorNumero');
            break;    
	case 'repFaltaNumSerie':
            $MIOLO->InvokeHandler($module, 'patrimonio/repFaltaNumSerie');
        break;
	case 'repInventario':
            $MIOLO->InvokeHandler($module, 'patrimonio/repInventario');
        break;
	case 'repResponsaveisSetor':
            $MIOLO->InvokeHandler($module, 'patrimonio/repResponsaveisSetor');
        break;
    }
?>
