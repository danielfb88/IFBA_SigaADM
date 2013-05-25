<?
    $action = $context->ShiftAction();
    $navbar->AddOption('Patrimonio',$module,'main:patrimonio');
    $navbar->AddOption('Itens', 'adm', 'main:itempatrimonioid:find');
	
	//var_dump ($action, $module);
    switch($action)
    {
        case 'find':
            $MIOLO->InvokeHandler($module, 'patrimonio/findbyid');
            break;
    }
?>
 