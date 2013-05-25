function buscaCutter(url,aguarde,idSubCampo) 
{
	xWalkTree(xGetElementById('m-container'), function(e){e.style.cursor = 'wait'});
	xGetElementById('m_txtCutter').innerHTML = '<div style="margin-top:10px"><img src=" ' + aguarde + '" alt="" border="0"></div>';
    autor = xGetElementById(idSubCampo);
    cp.set_response_type("TEXT");
	cp.call(url, "ajax_frmAutorAutoridade_BuscaCutter", doTextTipo_result, autor.value);
}	

function doTextTipo_result(result) 
{
    xGetElementById('m_txtCutter').innerHTML = result;
    xWalkTree(xGetElementById('m-container'), function(e){e.style.cursor = 'auto'});
}