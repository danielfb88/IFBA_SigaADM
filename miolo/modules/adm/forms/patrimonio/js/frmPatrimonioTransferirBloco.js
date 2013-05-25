function desabilita()
{
   //alert('desabilita()');
   btnSalvar     = xGetElementById("btnSalvar");
   btnSalvar.disabled = true;
}

function habilita(obj)
{
   //alert('habilita()');
   btnSalvar     = xGetElementById("btnSalvar");
   btnSalvar.style.display = 'transparent';
   
}

