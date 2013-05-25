
function doHabilitarTipoAtualizacao() 
{
	
	
	EMPENHO           = xGetElementById("radioTipoAtualizacao_0");
		
	numeroempenho     = xGetElementById("numeroempenho");
	b_empenho         = xGetElementById("b_numeroempenho");
	notaFiscal		  = xGetElementById("notaFiscal");
	descricao         = xGetElementById("descricao");
	b_descricao       = xGetElementById("b_descricao");
	MinIdDescricao    = xGetElementById("MinIdDescricao");	
	patriInicial      = xGetElementById("patriInicial");
	patriFinal        = xGetElementById("patriFinal");		
	
	
	//alert('doHabilitarTipoAtualizacao()');
	
   
	if (EMPENHO)
	{
		if (EMPENHO.checked) 
		{
			habilitaTexto(numeroempenho);      b_empenho.style.display = 'block';
			habilitaTexto(notaFiscal);
			habilitaTexto(descricao);          b_descricao.style.display = 'block';		
			desabilitaTexto(patriInicial);
			desabilitaTexto(patriFinal);
		}
		else
		{
			desabilitaTexto(numeroempenho);      b_empenho.style.display = 'none';
			desabilitaTexto(notaFiscal);
			desabilitaTexto(descricao);          b_descricao.style.display = 'none';		
			habilitaTexto(patriInicial);
			habilitaTexto(patriFinal);
		}
	}

}

function desabilitaSelecao()
{
	alert('desabilitaSelecao()');
	butSelecionar     = xGetElementById("butSelecionar");
	butSelecionar.style.display = 'none';
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