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

/**
 * @author Daniel Bonfim
 * @since 09-04-2013
 */
?>
<?

$perms->CheckAccess('BIB_CIRCULACAO_TOT',A_ACCESS,true);

$navbar->AddOption('Relatório de Empréstimos Regulares', $module, 'main:circulacao:relatorio:emprestimosRegulares');

$theme->ClearContent();

$report = new MJasperReport( 'sigaept' );
$report->Execute('biblioteca','emprestimosRegulares');

// TODO: O problema está nos relatórios recém criados no Jasper. Algo no processo de COMPILAÇÃO. vou dormir.

?>
