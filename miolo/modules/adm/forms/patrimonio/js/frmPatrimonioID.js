
function doHabilitarEdicaoNumSerie() 
{
	
	
	idPatrimonioEspecifico  = xGetElementById("idPatrimonioEspecifico");		
	numeroSerie     = xGetElementById("numeroSerie");
	
	
	//alert('doHabilitarTipoAtualizacao()');
	
   
	if (idPatrimonioEspecifico)
	{
		if (idPatrimonioEspecifico.value > 0) 
		{
			habilitaTexto(numeroSerie);
		}
		else
		{
			desabilitaTexto(numeroSerie);
			desabilitaAlteracaoNumSerie();
		}
	}

}

function desabilitaAlteracaoNumSerie()
{
	//alert('desabilitaSelecao()');
	butAlterarNumeroSerie     = xGetElementById("butAlterarNumeroSerie");
	butAlterarNumeroSerie.style.display = 'none';
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