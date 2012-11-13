<?
MIOLO::Import('extensions::cpaint2.inc.php','cpaint');
$cp = new cpaint();
$page->addScript('x/x_core.js');
$page->addScript('x/x_dom.js');
$page->addScript('cpaint/cpaint2.inc.js');
$page->addScript('m_ajax.js');
$cp->register('ajax_frmPreCatalogacao_BuscaCutter');

if (($page->request('cpaint_function')) != "")
{
    $theme->clearContent();
    $page->generateMethod = 'generateAJAX';
    $page->cpaint = $cp;
    $cp->start('UTF-8');
}

function ajax_frmPreCatalogacao_BuscaCutter($autor,$titulo)
{
    global $MIOLO,$theme;

    $objEtiqueta = $MIOLO->GetBusiness('biblioteca','etiqueta');
    $cutter = $objEtiqueta->geraCutter($autor,$titulo);

    $fieldCutter = new TextField('edtCutter','','Cutter',6);
    if (!empty($cutter))
    {
        $fieldCutter->setValue($cutter);
    }
    $theme->setAjaxContent($fieldCutter);
}
?>
