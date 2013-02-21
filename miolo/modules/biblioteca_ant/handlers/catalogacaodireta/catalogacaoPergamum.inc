<?PHP
/* Copyright 2006, 2007, 2008, 2009, 2010 do SETEC/MEC
 *
 * Este arquivo é parte do programa SigaEPT
 *
 * O SigaEPT é um software livre;  você pode redistribuí-lo e/ou modificá-lo dentro dos
 * termos da Licença Pública Geral GNU como publicada pela fundação do software livre (FSF);
 * na versão 2 da Licença.
 *
 * Este programa é distribuído na esperança que possa ser útil, mas SEM NENHUMA GARANTIA; sem
 * uma garantia implícita de ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja Licença
 * Pública Geral GNU/GPL em português para maiores detalhes.
 *
 * Você deve ter recebido uma cópia da Licença Pública Geral GNU, sob o título “LICENCA.txt”,
 * junto com este programa, se não, acesse o portal do Software Público Brasileiro no endereço
 * www.softwarepublico.gov.br ou escreva para Fundação do Software Livre (FSF) Inc.,51 Franklin
 * St, Fifth Floor, Boston, MA 02110-1301, USA
 */
?>
<?

$perms->CheckAccess('BIB_CATALOGACAO',A_ACCESS,true);

// obter acesso as classes de Interface de Usuário
    $ui = $MIOLO->GetUI();

// adicionando link na barra de navegação, que aponte para o arquivo atual
// a variável $module vem através da URL e aponta para o módulo atual 
    $navbar->AddOption('Catalogação/Obra', $module, 'main:catalogacao:catalogacaoPergamum');

    $theme->ClearContent();

    if ($item != NULL)
    {
        $obra = $this->manager->getBusiness('biblioteca','obra', $item);
        $navbar->AddOption("Obra: $obra->numeroDaObra", $module, 'main:catalogacao:catalogacao');
        $form = $ui->GetForm($module,'frmCatalogacaoPergamum',$item,'catalogacao/pergamum');
    }
    else
    {
        $form = $ui->GetForm($module,'frmCatalogacaoPergamum','','catalogacao/pergamum');
    }
    if ($theme->GetContent()  == '')
    {
        $theme->InsertContent($form);
    }
?>