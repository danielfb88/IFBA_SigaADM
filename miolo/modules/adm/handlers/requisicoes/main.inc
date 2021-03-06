<?
    /**
     * Adm Module - Requisicao Handler
     * Handler Uo do módulo de Administração 
     * @package br.org.miolo.ufjf.adm
     */
    
    /**
     * Permissões necessárias
     *    Adm
     */
    if($perms->CheckAccess('adm',A_ACCESS,true))
    $theme->ClearContent();
    $ui = $MIOLO->GetUI();
    $objRequisicao = $MIOLO->GetBusiness('adm','requisicao', $item);
    $navbar->AddOption($objRequisicao->idRequisicao, 'adm', 'main:requisicoes:main');
    $form = $MIOLO->GetUI()->GetForm($module,'frmRequisicao', $objRequisicao, 'requisicoes');
    $theme->InsertContent($form);
    $a = $context ? $context->ShiftAction() : 'main';
    $handled = $MIOLO->InvokeHandler($module,$a);
?>
