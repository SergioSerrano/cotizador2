//Servidor







function nuevoAjax() {
	var xmlhttp = false;
	try {
		// Creacion del objeto AJAX para navegadores no IE
		xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
	} catch (e) {
		try {
			// Creacion del objet AJAX para IE
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (E) {
			if (!xmlhttp && typeof XMLHttpRequest != "undefined") xmlhttp = new XMLHttpRequest();
		}
	}
	return xmlhttp;

}

function enviarDatos(nom, tel, email) {
	$.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/enviar.php",
		data: "nom=" + nom + "&tel=" + tel + "&mai=" + email
	}).done(function (msg) {
		if (msg == 1) {
			//subirFoto(foto,nom);
			window.location.href = "#page";
		} else {
			navigator.notification.alert("Error al Registrarse" + msg, null, "Registro", "Aceptar");
		}
	});
}

function setCookie(c_name, value, exdays) {
	var exdate = new Date();
	exdate.setDate(exdate.getDate() + exdays);
	var c_value = escape(value) + ((exdays == null) ? "" : "; expires=" + exdate.toUTCString());
	document.cookie = c_name + "=" + c_value;
}


function getCookie(c_name) {
	var c_value = document.cookie;
	var c_start = c_value.indexOf(" " + c_name + "=");
	if (c_start == -1) {
		c_start = c_value.indexOf(c_name + "=");
	}
	if (c_start == -1) {
		c_value = null;
	} else {
		c_start = c_value.indexOf("=", c_start) + 1;
		var c_end = c_value.indexOf(";", c_start);
		if (c_end == -1) {
			c_end = c_value.length;
		}
		c_value = unescape(c_value.substring(c_start, c_end));
	}

	return c_value;
}

function guarda_calif(valrad1, valrad2, valrad3, valrad4, valrad5, times) {

	$.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/g_preguntas.php",
		data: "c1=" + valrad1 + "&c2=" + valrad2 + "&c3=" + valrad3 + "&c4=" + valrad4 + "&c5=" + valrad5 + "&times=" + times
	}).done(function (msg) {

		if (msg == 1) {

			//subirFoto(foto,nom);


			navigator.notification.alert("Datos enviados", null, "Conectando al servidor", "Aceptar");
			return msg;

		} else {
			navigator.notification.alert("Error al guardar calificacion", null, "Alert", "Aceptar");
			return msg;
		}
	});
}

function guarda_cliente(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13, val14, val15, val16, val17, times) {
	/*alert( "c1="+val1+"&c2="+val2+"&c3="+val3+"&c4="+val4+"&c5="+val5+"&times="+times);
	$.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/prospectos.php",
		data: "c1="+val1+"&c2="+val2+"&c3="+val3+"&c4="+val4+"&c5="+val5+"&times="+times
	}).done(function(msg) {
		
		if(msg==1){
			
			//subirFoto(foto,nom);
		
			
			navigator.notification.alert("Datos enviados", null, "Conectando al servidor", "Aceptar");	
			return msg;
			
		}else{
			navigator.notification.alert("Error al guardar calificacion", null, "Alert", "Aceptar");	
			return msg;
		}
	});*/
	ajax = nuevoAjax();
	ajax.open("POST", "http://testapp2.260mb.net/sincronizar/g_clientes.php", true);
	ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	ajax.send("c1=" + val1 + "&c2=" + val2 + "&c3=" + val3 + "&c4=" + val4 + "&c5=" + val5 + "&c6=" + val6 + "&c7=" + val7 + "&c8=" + val8 + "&c9=" + val9 + "&c10=" + val10 + "&c11=" + val11 + "&c12=" + val12 + "&c13=" + val13 + "&c14=" + val14 + "&c15=" + val15 + "&c16=" + val16 + "&c17=" + val17 + "&times=" + times);
	ajax.onreadystatechange = function () {
		if (ajax.readyState == 4) {
			var msg = ajax.responseText
			if (msg == 1) {
				navigator.notification.alert("Datos guardados correctamente", obtener_ultimo_folio(times), "Guardado", "Aceptar");


			}
		}
	}
	return false;
}

function sube_interno(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13, val14, val15, val16, val17) {


	/*	
	$.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/g_clientes.php",
		data: "c1="+val+"&c2="+val2+"&c3="+val3+"&c4="+val4+"&c5="+val5+"&c6="+val6+"&c7="+val7+"&c8="+val8+"&c9="+val9+"&c10="+val10+"&c11="+val11+"&c12="+val12+"&c13="+val13+"&c14="+val14+"&c15="+val15+"&c16="+val16+"&c17="+val17
	}).done(function(msg) {
		
		if(msg==1){
			
			
			window.location.href="#form1";
			//navigator.notification.alert("Reserva Sincronizada Satisfactoriamente",null,"Reserva Realizada", "Aceptar");
			
			//subirFoto(foto,nom);
		
		
		}else{
			navigator.notification.alert("Error al guardar calificacion", null, "Registro", "Aceptar");	
		}
	});*/

	ajax = nuevoAjax();
	ajax.open("POST", "http://testapp2.260mb.net/sincronizar/g_clientes.php", true);
	ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	ajax.send("c1=" + val1 + "&c2=" + val2 + "&c3=" + val3 + "&c4=" + val4 + "&c5=" + val5 + "&c6=" + val6 + "&c7=" + val7 + "&c8=" + val8 + "&c9=" + val9 + "&c10=" + val10 + "&c11=" + val11 + "&c12=" + val12 + "&c13=" + val13 + "&c14=" + val14 + "&c15=" + val15 + "&c16=" + val16 + "&c17=" + val17);
	ajax.onreadystatechange = function () {
		if (ajax.readyState == 4) {
			var msg = ajax.responseText;
			if (msg == 1) {
				window.location.href = "#form1";
			}
		}
	}
	return false;
}

function subirReserva(id, th, ha, di, pe) {
	$.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/enviar.php",
		data: "nom=" + th + "&tel=" + ha + "&mai=" + di + "&pe=" + pe
	}).done(function (msg) {
		if (msg == 1) {
			navigator.notification.alert("Reserva Sincronizada Satisfactoriamente", function () {

				guardarHistorial(th, ha, di, pe);
				borrarReserva(id);
			}, "Reserva Realizada", "Aceptar");
		} else {
			navigator.notification.alert("Error al Registrarse", null, "Registro", "Aceptar");
		}
	});
}



function obtener_ultimo_folio(clave) {


	ajax = nuevoAjax();
	ajax.open("POST", "http://testapp2.260mb.net/sincronizar/d_o.php", true);
	ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	ajax.send("clave=" + clave);
	ajax.onreadystatechange = function () {
		if (ajax.readyState == 4) {

			var msg = ajax.responseText
			var obj = $.parseJSON(msg);
			navigator.notification.alert("Su Numero de folio es: " + obj.ultimo_folio, window.location.reload(), "Folio", "Aceptar");


		}

	}
	return false;
}

function obtener_info_clave(clave, objc) {
	return $.ajax({
		type: "GET",
		url: "http://testapp2.260mb.net/sincronizar/info_clave.php",
		data: "clave=" + clave
	}).done(function (msg) {
		if (msg[0] == 0) {
			//subirFoto(foto,nom);

			navigator.notification.alert("Error al obtener info", "Folio", "Aceptar");

		} else {

			var obj = $.parseJSON(msg);

			(function () {
				llena_tabla(objc, obj);
			}());
			//navigator.notification.alert(obj.precio,llena_tabla(objc,obj), "Folio", "Aceptar");



		}

	});


}


function obtener_info_cliente(cliente) {

	return $.ajax({
		type: "POST",
		url: "http://testapp2.260mb.net/sincronizar/datos_cliente.php",
		data: "cliente=" + cliente
	}).done(function (msg) {
		if (msg[0] == 0) {
			//subirFoto(foto,nom);

			navigator.notification.alert("Error al obtener info", "Folio", "Aceptar");

		} else {

			var obj = $.parseJSON(msg);

			(function () {

				llena_datos_cliente(obj);
			}());
			//navigator.notification.alert(obj.precio,llena_tabla(objc,obj), "Folio", "Aceptar");



		}

	});


}

function llena_datos_cliente(obj) {

	$('#Comprador').val(obj.nombre);
	$('#agente').val(obj.agente);
	$('#poblacion').val(obj.ciudad);
	$('#condic').val(obj.cond_pago);
	$('#razon').val(obj.nombre);
	$('#estado').val(obj.estado);
	$('#tel').val(obj.telefono);
	$('#calle').val(obj.calle);
	$('#cp').val(obj.cp);
	$('#colonia').val(obj.col);
	$('#status').val(obj.status);
	$('#mail').val(obj.mail);

}

function llena_tabla(objc, obj) {

	var valor = (isNaN(parseFloat(obj.precio))) ? 0 : parseFloat(obj.precio);
	objc.parents('tr').children('.descripcion').children('#las').remove();
	$('<label style="text-align:right" data-theme="b" id="las" class="cldescripcion">' + obj.descripcion + '</label>').appendTo(objc.parents('tr').children('.descripcion'));
	objc.parents('tr').children('.p_unit').children('#labo').remove();
	$('<label  style="visibility:hidden" id="labo" ">' + valor + '</label>').appendTo(objc.parents('tr').children('.p_unit'));
	objc.parents('tr').children('.p_unit').children('#lab').remove();
	$('<label style="text-align:right" data-theme="b" id="lab" class="clprecio">$' + valor.format() + '</label>').appendTo(objc.parents('tr').children('.p_unit'));
}

function exporta() {

var comp=$('#Comprador').val();
	alert(comp);
	//doc.text(5,lineas,comp);
	var agente=$('#agente').val();
	alert(agente);
	
	var tel=$('#tel').val();
	alert(tel);

	window.requestFileSystem(LocalFileSystem.PERSISTENT, 0, gotFS, fail);








}


function success3(parent) {
	var directoryReader = parent.createReader();
	directoryReader.readEntries(success, fail);
}

function success2(parent) {
	parent.getParent(success3, fail);
	alert(parent.name);
}





function gotFS(fileSystem) {
	fileSystem.root.getFile($('#No_cliente').val() + ".pdf", {
		create: true,
		exclusive: false
	}, gotFileEntry, fail);
}

function gotFileEntry(fileEntry) {
	alert(fileEntry.name);

	fileEntry.createWriter(gotFileWriter, fail);

	// Obtiene el `DirectoryEntry` padre
	fileEntry.getParent(success2, fail);


}

function success(entries) {
	var i;
	for (i = 0; i < entries.length; i++) {
		alert(entries[i].name);
	}
}

function fail(error) {
	alert("Ocurrió un error mientras se obtenía la lista: " + error.code);
}



function gotFileWriter(writer) 
{
	var temppdf=0;
	var sumpdf=0;
	var valorclave='';
	var meses1 = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
	var f1 = new Date();
	var doc = new jsPDF();
	var lineas=5;
	var contador=0;
	

	
	
	
	
	
	
	doc.setFontSize(12); 
	doc.text(120,lineas,'VICTORINOX');
	lineas=lineas+10;
	doc.text(60,lineas,'COTIZACION');
	doc.text(120,lineas,'Pu0x80bla Pue, a:  ' + f1.getDate() +  ' de '  + meses1[f1.getMonth()] + ' de ' + f1.getFullYear());
	lineas=lineas+10;
	doc.text(5,lineas,'Comprador');
	doc.text(120,lineas,'Agente');
	
	lineas=lineas+5;
	var comp=$('#Comprador').val();
	alert(comp);
	doc.text(5,lineas,comp);
	var agente=$('#agente').val();
	alert(agente);
	doc.text(120,lineas,agente);
	
	lineas=lineas+5;
	doc.text(5,lineas,'Cliente');
	doc.text(60,lineas,'Poblacion');
	doc.text(120,lineas,'Condiciones');
	
	lineas=lineas+5;
	var no_cliente=$('#No_cliente').val();
	doc.text(5,lineas,no_cliente);
	var poblacion=$('#poblacion').val();
	doc.text(60,lineas,poblacion);
	var condic=$('#condic').val();
	doc.text(120,lineas,condic);
	
	lineas=lineas+5;
	
	doc.text(5,lineas,'Razon Social');
	doc.text(60,lineas,'Estado');
	doc.text(120,lineas,'Telefono');
	
	lineas=lineas+5;
	var razon=$('#razon').val();
	doc.text(5,lineas,razon);
	var estado=$('#estado').val();
	doc.text(60,lineas,estado);
	var tel=$('#tel').val();
	doc.text(120,lineas,tel);
	
	lineas=lineas+5;
	doc.text(5,lineas,'Calle');
	doc.text(60,lineas,'C.P.');
	doc.text(120,lineas,'Fax');
	
	
	lineas=lineas+5;
	var calle=$('#calle').val();
	doc.text(5,lineas,calle);
	var cp=$('#cp').val();
	doc.text(60,lineas,cp);
	var fax=$('#fax').val();
	doc.text(120,lineas,fax);
	
	
	lineas=lineas+5;
	doc.text(5,lineas,'Colonia');
	doc.text(60,lineas,'Status');
	doc.text(120,lineas,'Mail');
	
	lineas=lineas+5;
	var colonia=$('#colonia').val();
	doc.text(5,lineas,colonia);
	var status=$('#status').val();
	doc.text(60,lineas,status);
	var  mail=$('#mail').val();
	doc.text(120,lineas,mail);
	
	lineas=lineas+50;
	
	
	doc.text(5,lineas,'Por medio de la presente le envio un cordial saludo y a su vez le hago llegar la cotizacion solicitada');
	
	
	contador=lineas+50;
	
	$.each($('.clave123'), function(index, value) {
				valorclave=$(this).val();
				doc.text(5,contador,valorclave);	
					contador = contador + 5;
				});
	contador=lineas+50;
	$.each($('.cnt123'), function(index, value) {
				valorclave=$(this).val();
				doc.text(45,contador,valorclave);	
					contador = contador + 5;
				});
	contador=lineas+50;
	$.each($('.cldescripcion'), function(index, value) {
				valorclave=$(this).text();
				doc.text(55,contador,valorclave);	
					contador = contador + 5;
				});
	contador=lineas+50;
	$.each($('.clprecio'), function(index, value) {
				valorclave=$(this).text();
				doc.text(135,contador,valorclave);	
					contador = contador + 5;
				});
	
	contador=lineas+50;
	$.each($('.cl_stotal'), function(index, value) {
				valorclave=$(this).text();
				doc.text(155,contador,valorclave);	
					contador = contador + 5;
				});
	lineas=contador;
	
	lineas=lineas+5;
	var tt=$('#tt').text();
	doc.text(130,lineas,tt);
	lineas=lineas+5;
	doc.text(120,lineas,'Descuento');
	
	lineas=lineas+5;
	
	var t_descuento=$('#t_descuento').val();
	
	doc.text(130,lineas,t_descuento);
	
	lineas=lineas+5;
	doc.text(130,lineas,t_descuento);
	
	
	
	writer.write(doc.output());
	

}
function callback(error1) {
	alert(error1);


}

function fail(error) {
	alert(error.code);


}