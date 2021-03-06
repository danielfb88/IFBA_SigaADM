<?
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
	$theme->clearContent();
	$ui = $MIOLO->getUI();
	$navbar->addOption('Inscrição', 'rh', 'main:capacitacao:formulario');
	/*
    if ($MIOLO->getPerms()->isMemberOf($MIOLO->getLogin()->id,'rh_capacitacao'))
    {
	*/
        $siape = $MIOLO->_request('siape');
        if (($siape == '') && ($MIOLO->_request('cpaint_function') == ''))
        {
            $form = $ui->getForm('rh','frmInscSiape',NULL,'capacitacao');
        }
        else
        {
            $vinculo = $MIOLO->getBusiness('rh','vinculo',$siape);
            if (($vinculo->idFuncionario != '') || ($MIOLO->_request('cpaint_function') != ''))
            {
		$idUsuario = $this->manager->GetLogin()->idkey;
		$objReq = $MIOLO->GetBusiness('rh','reqcapacitacao');
		if ($objReq->isReq($idUsuario))
		{
			$form = $ui->getForm('rh','frmInscricao',$siape,'capacitacao');
		}
		else
		{
			$MIOLO->Error('Você não possui permissão para acessar o formulário de inscrição. Favor solicitar permissão ao setor responsável');
		}
            }
            else
            {
                $go = $MIOLO->getActionURL('rh','main:capacitacao');
                $form = MPrompt::Error("Siape [$siape] não cadastrado no SIGA!", $go, 'Erro');
            }
        }
	/*
    }
    else 
    {
        $siape = $MIOLO->getLogin()->id;
        $form = $ui->getForm('rh','frmInscricao',$siape,'capacitacao');
    }
	*/
	$theme->insertContent($form);
?>
