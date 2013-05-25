function doHabilitarGarantia() 
{
	
	GARANTIA = xGetElementById("radioPossuiGarantia_0");
	DATAGARANTIA = xGetElementById("datagarantia"); 
	BTNDATAGARANTIA = xGetElementById("btndatagarantia"); 	
	
	if (GARANTIA.checked) 
	{
		habilitaTexto(DATAGARANTIA); 
		BTNDATAGARANTIA.style.display = 'block';	
	}
	else
	{
		desabilitaTexto(DATAGARANTIA); 
		BTNDATAGARANTIA.style.display = 'none';
	}	

}

function doHabilitarCampos() 
{
/*
0;"UNDEF";"Não Definida"
1;"EMPENHO";"Todos os patrimônios do Empenho"
2;"DESCR_EMPENHO";"Descrição específica do Empenho"
3;"CLASSIF_EMPENHO";"Classificador específico do Empenho"
4;"ESPECIFICO";"Patrimônio específico"
5;"INTERVALO";"Invetervalo de patrimônios"
6;"SEM_GARANTIA";"Patrimônios que não possem garantia"
*/

	
	EMPENHO           = xGetElementById("radioGroupGarantia_0");
	DESCR_EMPENHO     = xGetElementById("radioGroupGarantia_1");
	CLASSIF_EMPENHO   = xGetElementById("radioGroupGarantia_2");
	ESPECIFICO        = xGetElementById("radioGroupGarantia_3");
	INTERVALO         = xGetElementById("radioGroupGarantia_4");
	SEM_GARANTIA      = xGetElementById("radioGroupGarantia_5");
	
	numeroempenho     = xGetElementById("numeroempenho");
	b_empenho         = xGetElementById("b_numeroempenho");
	idclassificador   = xGetElementById("idclassificador");
	b_idclassificador = xGetElementById("b_idclassificador");
	descricao         = xGetElementById("descricao");
	b_descricao       = xGetElementById("b_descricao");
	MinIdDescricao    = xGetElementById("MinIdDescricao");	
	patriInicial      = xGetElementById("patriInicial");
	patriFinal        = xGetElementById("patriFinal");		
	
	//b_empenho.style.backgroundColor= "#CCCCCC";
	//b_empenho.style.backgroundColor= "transparent";
	
	if (EMPENHO.checked) 
	{
		//numeroempenho.value = EMPENHO.value;
		habilitaTexto(numeroempenho);      b_empenho.style.display = 'block';
		desabilitaTexto(descricao);        b_descricao.style.display = 'none';
		desabilitaTexto(idclassificador);  b_idclassificador.style.display = 'none'; 
		desabilitaTexto(patriInicial);
		desabilitaTexto(patriFinal);
	}
	else if (DESCR_EMPENHO.checked) 
	{
	    //numeroempenho.value = DESCR_EMPENHO.value;
		habilitaTexto(numeroempenho);       b_empenho.style.display = 'block';
		habilitaTexto(descricao);           b_descricao.style.display = 'block';
		MinIdDescricao.value = '';
		desabilitaTexto(idclassificador);   b_idclassificador.style.display = 'none'; 
		desabilitaTexto(patriInicial);
		desabilitaTexto(patriFinal);
	}
	else if (CLASSIF_EMPENHO.checked) 
	{
	    //numeroempenho.value = CLASSIF_EMPENHO.value;
		habilitaTexto(numeroempenho);       b_empenho.style.display = 'block';
		desabilitaTexto(descricao);         b_descricao.style.display = 'none';		     
		habilitaTexto(idclassificador);     b_idclassificador.style.display = 'block'; 
		desabilitaTexto(patriInicial);
		desabilitaTexto(patriFinal);
	}
	if (ESPECIFICO.checked) 
	{
	    //numeroempenho.value = ESPECIFICO.value;
		desabilitaTexto(numeroempenho);     b_empenho.style.display = 'none';
		desabilitaTexto(descricao);         b_descricao.style.display = 'none';
		MinIdDescricao.value = '';
		desabilitaTexto(idclassificador);   b_idclassificador.style.display = 'none'; 
		habilitaTexto(patriInicial);
		desabilitaTexto(patriFinal);
	}
	if (INTERVALO.checked) 
	{
	    //INTERVALO.value = ESPECIFICO.value;
		desabilitaTexto(numeroempenho);     b_empenho.style.display = 'none';
		desabilitaTexto(descricao);         b_descricao.style.display = 'none';
		MinIdDescricao.value = '';
		desabilitaTexto(idclassificador);   b_idclassificador.style.display = 'none'; 
		habilitaTexto(patriInicial);
		habilitaTexto(patriFinal);
	}	

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