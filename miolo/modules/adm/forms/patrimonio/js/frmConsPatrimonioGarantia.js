function doHabilitarGarantia() 
{
//	

}

function doHabilitarCampos() 
{
	
	G_TODOS      = xGetElementById("tipogarantia_0");
	G_UNDEF      = xGetElementById("tipogarantia_1");
	G_ESPECIFICO = xGetElementById("tipogarantia_3");
	GARANTIA_INI = xGetElementById("garantiaIni"); 
	GARANTIA_FIM = xGetElementById("garantiaFim"); 	
	
	//alert('doHabilitarCampos()');
	
/*
		$TipoGarantia = array(
	        array('Todos','TODOS'),
		    array('Garantia ainda não definida','UNDEF'),
			array('Patrimônios COM garantia','COM_GARANTIA'),
			array('Patrimônios SEM garantia','SEM_GARANTIA'),
			array('Apenas "itens específicos','ESPECIFICO'),			
        );
*/	
	
	
	/*numeroempenho     = xGetElementById("numeroempenho");
	b_empenho         = xGetElementById("b_numeroempenho");
	idclassificador   = xGetElementById("idclassificador");
	b_idclassificador = xGetElementById("b_idclassificador");
	descricao         = xGetElementById("descricao");
	b_descricao       = xGetElementById("b_descricao");
	MinIdDescricao    = xGetElementById("MinIdDescricao");	
	patriInicial      = xGetElementById("patriInicial");
	patriFinal        = xGetElementById("patriFinal");		
	
	//b_empenho.style.backgroundColor= "#CCCCCC";
	//b_empenho.style.backgroundColor= "transparent";*/
	
	if (G_TODOS.checked  || G_UNDEF.checked || G_ESPECIFICO.checked) 
	{
		//alert('checked');
		desabilitaTexto(GARANTIA_INI);      
		desabilitaTexto(GARANTIA_FIM);
	}
	else
	{
	    habilitaTexto(GARANTIA_INI);      
		habilitaTexto(GARANTIA_FIM);
	}

}

function doDesabilitaExec ()
{
	butExecutar      = xGetElementById("butExecutar");
	butExecutar.backgroundColor = "transparent";
	butExecutar.disabled = true;
	
    //alert('doDesabilitaExec()');	
}

function habilitaTexto(obj)
{
   obj.style.backgroundColor = "transparent";
   obj.disabled = false;
}

function desabilitaTexto(obj)
{
   obj.style.backgroundColor = "#CCCCCC";
   obj.disabled = true;
   obj.value = '';
}

