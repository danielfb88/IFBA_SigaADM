<?
MIOLO::Import('extensions::cpaint2.inc.php','cpaint'); 
$cp = new cpaint();
$page->addScript('x/x_core.js');
$page->addScript('x/x_dom.js');
$page->addScript('cpaint/cpaint2.inc.js');
$page->addScript('m_ajax.js');
$cp->register('ajax_frmAutorAutoridade_BuscaCutter');

if (($page->request('cpaint_function')) != "") 
{
    $theme->clearContent();
    $page->generateMethod = 'generateAJAX';
    $page->cpaint = $cp;
    $cp->start('UTF-8');
}
    
function ajax_frmAutorAutoridade_BuscaCutter($value)
{
    global $MIOLO,$theme; 
    if ($value != '')
    {
		$objEtiqueta = $MIOLO->GetBusiness('biblioteca','etiqueta');
		$cutter = $objEtiqueta->geraCutter($value);
    }    
    $fieldCutter = new MTextField('txtCutter','','Cutter',6, '', null, true);
    $fieldCutter->formMode = MControl::FORM_MODE_SHOW_ABOVE;
    $fieldCutter->setValue($cutter);
    $theme->setAjaxContent($fieldCutter);    
}
?>
