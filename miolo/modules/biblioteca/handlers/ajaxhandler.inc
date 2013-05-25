<?

MIOLO::Import('extensions::cpaint2.inc.php','cpaint');
$cp = new cpaint();
$page->addScript('x/x_core.js');
$page->addScript('x/x_dom.js');
$page->addScript('cpaint/cpaint2.inc.js');
$page->addScript('m_ajax.js');
$cp->register('ajax_frmCatalogacaoIFMS_makeGroup');
$cp->register('ajax_frmPreCatalogacao_BuscaCutter');
$cp->register('ajax_frmCatalogacaoIFMS_makeSubField');
$cp->register('ajax_frmCatalogacaoAutoComplete');
$cp->register('ajax_frmCatalogacaoIFMS_IndicadorHint');

if (($page->request('cpaint_function')) != "")
{
    $theme->clearContent();
    $page->generateMethod = 'generateAJAX';
    $page->cpaint = $cp;
    $cp->start('UTF-8');
}

function ajax_frmPreCatalogacao_BuscaCutter($autor,$titulo, $skip = '#')
{    
    global $MIOLO,$theme;

    $objEtiqueta = $MIOLO->GetBusiness('biblioteca','etiqueta');
    $cutter = $objEtiqueta->geraCutter($autor,$titulo, $skip);

    $fieldCutter = new TextField('edtCutter','','Cutter',6);
    if (!empty($cutter))
    {
        $fieldCutter->setValue($cutter);
    }
	
    $theme->setAjaxContent($fieldCutter);
}

function ajax_frmCatalogacaoIFMS_makeGroup($idficha,$idsubficha,$tag,$ocorrencia)
{
	global $MIOLO,$module;
        
        $objObra = $MIOLO->GetBusiness($module,'obra');
        
        $formData = $objObra->getFormFields($idficha,$idsubficha,null,$tag);
        
        makeGroup($formData, $ocorrencia);
}

function ajax_frmCatalogacaoIFMS_makeSubField($idficha,$idsubficha,$tag,$ocorrencia,$linha,$subcampo)
{
	global $MIOLO,$module;
        
        $objObra = $MIOLO->GetBusiness($module,'obra');
        
        $formData = $objObra->getFormFields($idficha,$idsubficha,null,$tag,$subcampo);
        
        makeSubField($formData, $ocorrencia,$linha);
}

function makeGroup($obraData, $ocorrencia)
{
    global $theme;
    
    $ocorrencia++;

    foreach($obraData as $idEtiqueta => $values)
    {
        foreach($values['ocorrencias'] as $ocurr => $ocvalues)
        {
            $fields = array();
            
                   $fields[] = new MTextLabel('lbl'. $values['tag'] . '_ind1_'.$ocorrencia,'Indicador 1','&nbsp;');
                    
                   $fields[] = new MTextField('txt_'. $values['tag'] .'_ind1_'.$ocorrencia,$ocvalues['ind1'],'',1);
                   
                   $fields[] = new MTextLabel('lbl'. $values['tag'] . '_ind1_'.$ocorrencia,'Indicador 2','&nbsp;');
                   
                   $fields[] = new MTextField('txt_'. $values['tag'] .'_ind2_'.$ocorrencia,$ocvalues['ind2'],'',1);
                   
                   $fields[] = new MSpacer();            

            foreach($ocvalues['subcampos'] as $subcampo => $subvalues)
            {
                $fields2 = array();
                
                $repetitivel = $subvalues['repeticao'] == '1' ? ' [R]' : ' [NR]';
                
                foreach($subvalues['linhas'] as $linha => $lvalue)
                {
                    //Subcampo não repetitível
                    $fields2[] = new MTextLabel('lbl'. $values['tag'] . $subcampo . '_'.$ocorrencia.'_'.$linha,'['.$subcampo.'] - '.$subvalues['descricao'].$repetitivel,'&nbsp;');
                    $fields2[] = new MTextField('txt_'. $values['tag'] .'_'. $subcampo . '_'.$ocorrencia.'_'.$linha,$lvalue,'',35);
                    $fields2[] = new MSpacer();                            
                }

                if($subvalues['repeticao'] == '1')
                {
                    $fields2[] = new MSpacer();
                    $fields2[] = new LinkButton('lnk_s_'.$values['tag'].'_'.$ocorrencia.'_'.count($subvalues['linhas']).'_'.$subcampo,'Adicionar subcampo '.$subcampo,'javascript:void(0)');

                    $grupo = new MBaseGroup( 'group'. $values['tag'] . $subcampo.'_'.$ocorrencia, $subcampo . ' - ' . $subvalues['descricao'],$fields2,'horizontal','css');
                    $grupo->addAttribute('style','padding:10px');
                    $fields[] = $grupo;                            

                }
                else
                {
                    foreach($fields2 as $k => $v)
                        $fields[] = $v;
                }
            }
            
            $repetitivel = $values['repeticao'] == '1' ? ' [R]' : ' [NR]';

            $grupo = new MBaseGroup( 'group'. $values['tag'].'_'.$ocorrencia, $values['tag'] . ' - ' . $values['tag_descricao'].$repetitivel,$fields,'horizontal','css');
            $grupo->addAttribute('style','padding:10px');
            $fields = array($grupo);
        }

        if($values['repeticao'] == '1')
            $fields[] = new LinkButton('lnk_g_'.$values['tag'].'_'.count($values['ocorrencias']),'Duplicar tag '.$values['tag'],'javascript:void(0)');

        $theme->setAjaxContent($fields);
    }
}
    
function makeSubField($obraData, $ocorrencia, $linha)
{
    global $theme;
    
    $ocorrencia;
    $linha++;

    foreach($obraData as $idEtiqueta => $values)
    {
        foreach($values['ocorrencias'] as $ocurr => $ocvalues)
        {
            $fields = array();

            foreach($ocvalues['subcampos'] as $subcampo => $subvalues)
            {
                $fields2 = array();
                
                $repetitivel = $subvalues['repeticao'] == '1' ? ' [R]' : ' [NR]';
                
                foreach($subvalues['linhas'] as $lin => $lvalue)
                {
                    
                    $fields2[] = new MDiv('', new MTextLabel('lbl'. $values['tag'] . $subcampo . '_'.$ocorrencia.'_'.$linha,'['.$subcampo.'] - '.$subvalues['descricao'].$repetitivel,'&nbsp;'), '', 'style="float:left;margin-right:5px"');
                    
                    $fields2[] = new MTextField('txt_'. $values['tag'] .'_'. $subcampo . '_'.$ocorrencia.'_'.$linha,$lvalue,'',35);                        
                }

                if($subvalues['repeticao'] == '1')
                {
                    $fields2[] = new MSpacer();
                    $fields2[] = new LinkButton('lnk_s_'.$values['tag'].'_'.$ocorrencia.'_'.$linha.'_'.$subcampo,'Adicionar subcampo '.$subcampo,'javascript:void(0)');
                    
                    $theme->setAjaxContent($fields2);                       

                }
            }
        }
    }    
}

function ajax_frmCatalogacaoAutoComplete($conteudo,$tag,$subcampo,$table)
{
    global $theme, $MIOLO ;
    
    //var_dump($conteudo,$tag,$subcampo,$table);
    
    $objEtiqueta = $MIOLO->GetBusiness('biblioteca','etiqueta');
    
    $objObra = $MIOLO->GetBusiness('biblioteca','obra');
    
    $idetiqueta = $objEtiqueta->GetIdByTag($tag)->result[0][0];
    
    //var_dump($idetiqueta);
    
    if($table == 'bt_autor' || $table == 'bt_assunto')
        $sql = new sql('distinct(conteudo)',$table,"sem_acentos(conteudo) ILIKE sem_acentos('$conteudo%') AND indicador IS NULL AND idetiqueta = $idetiqueta AND subcampo = '$subcampo'",'conteudo');
    else if($table == 'bt_editora')
        $sql = new sql('distinct(descricao)',$table,"sem_acentos(descricao) ILIKE sem_acentos('$conteudo%')",'descricao');
    else if($table == 'bt_obra')
        $sql = new sql('distinct(titulo)',$table,"sem_acentos(titulo) ILIKE sem_acentos('$conteudo%')",'titulo');
    
    $query = $objObra->doSQL($sql);
    
    $response = array();
    
    foreach($query->result as $k => $v)
        array_push($response,$v[0]);
    
    $fields = array(new Selection('selSistema','','',$response));

    $theme->setAjaxContent($fields);
}

function ajax_frmCatalogacaoIFMS_IndicadorHint($tag,$ind)
{
    global $theme, $MIOLO;
	
	$objObra = $MIOLO->GetBusiness('biblioteca','obra');
	
	$ind = $ind == 'ind1' ? 'Indicador 1%' : 'Indicador 2%';
	
	$sql = new sql('o.idopcao','bt_opcao o',"descricao ILIKE '%$tag%' AND descricao ILIKE '$ind'");
	
	$query = $objObra->doSQL($sql);
	
	if($query->result)
	{
		$sql = new sql('ol.indice,ol.texto','bt_opcaolista ol',"ol.idopcao = ".$query->result[0][0],'ol.ordem');
		
		$query = $objObra->doSQL($sql);
		
		if($query->result)
		{
			$response = array();
			
			foreach($query->result as $k => $v)
				array_push($response,$v[0].' - '.$v[1]);

			$fields = array(new Selection('ajaxSel','','',$response));

			$theme->setAjaxContent($fields);				
		}
	}
}
?>
