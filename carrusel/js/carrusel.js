$(document).ready(function(){
	//descomentar cualquiera de las siguientes dos lineas, para que el
	//carrusel se desplace automaticamente cada 3000 milisegundos (3 segundos)
	//setInterval("$('#divIzquierda').click()",3000);
	//setInterval("$('#divDerecha').click()",3000);
	
	//evento clic de la flecha izquierda
	$('#divIzquierda').click(function(){
		//tomamos el ultimo elemento de la lista y lo colocamos en la ultima posicion
		$('#divCentro ul').prepend($('#divCentro ul li:last'));
	});
	
	//evento clic de la flecha derecha
	$('#divDerecha').click(function(){
		//tomamos el primer elemento de la lista y lo trasladamos a la primera posicion
		$('#divCentro ul').append($('#divCentro ul li:first'));
	});
	
	$('#divIzquierda2').click(function(){
		//tomamos el ultimo elemento de la lista y lo colocamos en la ultima posicion
		$('#divCentro2 ul').prepend($('#divCentro2 ul li:last'));
	});
	
	//evento clic de la flecha derecha
	$('#divDerecha2').click(function(){
		//tomamos el primer elemento de la lista y lo trasladamos a la primera posicion
		$('#divCentro2 ul').append($('#divCentro2 ul li:first'));
	});
	
	$('#divIzquierda3').click(function(){
		//tomamos el ultimo elemento de la lista y lo colocamos en la ultima posicion
		$('#divCentro3 ul').prepend($('#divCentro3 ul li:last'));
	});
	
	//evento clic de la flecha derecha
	$('#divDerecha3').click(function(){
		//tomamos el primer elemento de la lista y lo trasladamos a la primera posicion
		$('#divCentro3 ul').append($('#divCentro3 ul li:first'));
	});
	
});