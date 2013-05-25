<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    $navbar->AddOption('Itens', 'adm', 'main:itempatrimonioid:find');
    switch($action)
    {
        case 'find':
            $MIOLO->InvokeHandler($module, 'patrimonio/find');
            break;
        case 'new':
            $MIOLO->InvokeHandler($module, 'patrimonio/new');
            break;
        default:
            $MIOLO->InvokeHandler($module, 'patrimonio/main');
    }
?>
