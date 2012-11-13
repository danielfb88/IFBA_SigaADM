<?
        // variáveis
    $theme->ClearContent();
        $ui = $MIOLO->GetUI();

    // barra de navegação
        $navbar->AddOption('Processos no Setor', 'protocolo','main:documentos:processossetor');

    // insere o formulário frmProcessoNovo
        $form = $ui->GetForm('protocolo','frmDocumentosProcessosSetor',NULL,'documentos');
        $theme->InsertContent($form);
?>
