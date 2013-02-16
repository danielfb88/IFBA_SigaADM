<?
    // barra de navegação
    $navbar->AddOption('Processos','protocolo','main:processos:find');
    
    // se ação
    $action = $context->ShiftAction();
    switch($action)
    {
    
        // find
        case 'find':
        
            $MIOLO->InvokeHandler($module, 'processos/find');
            
        break;

        // new
        case 'new':
        
            $MIOLO->InvokeHandler($module, 'processos/new');
            
        break;

        // novo
        case 'nova':
            
            $MIOLO->InvokeHandler($module, 'processos/nova');
        
        break;
        
         // processo vago
        case 'vagos':
            
            $MIOLO->InvokeHandler($module, 'processos/vagos');
        
        break;

        case 'vago':
            
            $MIOLO->InvokeHandler($module, 'processos/vago');
        
        break;
        
        // desconhecida
        default:
            $MIOLO->InvokeHandler($module, 'processos/main');
        
    }
?>
