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
	$('<label style="text-align:right" data-theme="b" id="las">' + obj.descripcion + '</label>').appendTo(objc.parents('tr').children('.descripcion'));
	objc.parents('tr').children('.p_unit').children('#labo').remove();
	$('<label  style="visibility:hidden" id="labo">' + valor + '</label>').appendTo(objc.parents('tr').children('.p_unit'));
	objc.parents('tr').children('.p_unit').children('#lab').remove();
	$('<label style="text-align:right" data-theme="b" id="lab">$' + valor.format() + '</label>').appendTo(objc.parents('tr').children('.p_unit'));
}

function exporta() {



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
	var valorclave=0;
	var meses1 = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
	var f1 = new Date();
	var doc = new jsPDF();
	var contador=25;
	// We'll make our own renderer to skip this editor
	//var specialElementHandlers = {
	//	'#form1': function (element, renderer) {
//			return true;
//		}
//	};
	// All units are in the set measurement for the document
	// This can be changed to "pt" (points), "mm" (Default), "cm", "in"
	//doc.fromHTML($('#form1').get(0), 15, 15, {
	//	'width': 170,
	//	'elementHandlers': specialElementHandlers
	//});
	var imgData2='data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBhQSERIPEBQVDw4WFBsVFBUWFhYVFBYUGBUdFxQSGBcXHCYqGhojJR4UIC8lLycwLS8vGh8xPDoqNSYsLikBCQoKDQsNGQ4PGDUkHiQ1NTU1LTU1NSw1MjU1NDU1NSwsNTY0NTU1LzQsNTQ0NDU1Myo0NSw0NCwsLywsLC81NP/AABEIAFAAUAMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAAEBQMGBwIBAP/EADYQAAEDAgUACAMHBQEAAAAAAAECAwQAEQUGEiExBxMUMkFRcYEiYZEkQlJTYrHBM0OhotEj/8QAGgEAAgMBAQAAAAAAAAAAAAAAAAQCAwYFAf/EACcRAAICAQQABQUBAAAAAAAAAAABAgMRBAUSIRMiUbHhQXKRofAU/9oADAMBAAIRAxEAPwCgss7VMI9eMUUhNWlBEmLXYh0UkAC52FWbAchypVlhHZ2Dv1joIuPNLfJ97ChvBJJsqPYq+MOtEl9GhseySm5Tqe80dKT7FKjb3r1fRdtoExntdt2tI03/AA97V72qPJFnhSM3MSozGq14vk2XGBU8z8A/uNnWj1Nt0+4pEtupZRW00LzHqF5mjlpoZ+giex6MbHlzQkajmRQBfsFjRIWHsYqtpUyQuyRqI0tub3AHCQCDvYmq3j+epUu4Wvq2fy27pTb9R5VT7B2+twOc0d+pdK0/Luubf7VQaRvlJPGTY7JRTOt2OOZJ/wBgngzFsuJdZUW3E91SdiPA1EVG+oklV76r735vfm9aH0Y5WjSmXlyGg6pLgCSSoWGm9tjSbpIwZmLKQ1HQGmy0FEAk7lRF9/aqnB8eR1Ia2qeqdCj5vU9y/wBJcqNZDh7UxwUuH4wP0r/7emucsDiqiNYnHSqKt4j/AMttCtVySU/dNgTcVnwRfYcnb67VpPSYrq0woae620VfQBtP7Kq6iUm8HF3ummrjKMcN5/XyZy6mgpApi+KXyadMofRqYMCl8amDFAGiZBY1wMTbuE6trqNki7HJPgK7yd0bRno+uQpL7msjUw8Si1hYbW35ofLR6vB8Se/ESkezaUfzVNwrNMqMjqo7ymm76tICTueTuPSlLJRUu0abbqNRbp5eDPj2vb1N0y9llmElaI4UErVqVqUVbgW8aEx7I0WY4HnwsrCQkaVlIsCTwPU0p6LsceksvqkOF1SXAlJIAsNN7bAUl6S81So0tDcd5TTZaCiAEnfUbncH5VJyjwzjoVr0+peslWp+dfXLBsyZCZYkxhHcaZQSlSkvPHWohwdwEb+XrXPSmftwHlHR/lazVOnZgefdbdkOF1TZGkkAWAUFW2Aq39KKPtqHPuuR0kHz0rN/3FeUtNvCLt1quqrrVsuTw/dFHfpdJpg/S+TTRnT6MaOaVS+OaKQqgDSHIDoy+2hptbinl9YsJBJCFLKrkDwsE1m9P8vZukw7Bhwlr8pd1t+gHKfY1cEuQMXGhxPYsRPBFvjPyOwcHyNlUrbU5dmk2zc4aePhyXWc5+Ck4Hm+TDSpEdaUJUrUq6Are1uTQ+N469LcDshQU4E6QQkJ+EG42HqakzDlp6E51T6dj3FjuLHmD5+Y5FH5SyO7OOv+jFB+J0jm3IQPE/PgUriT8ppHPS1x/wBPX3FdbZUshCAVrOwSkEqPoBWm54hLVhsGQ8ktvtgNrCuRqTax8t0p+tcLzVDw8FjDGg+6NlPq7pV4/Hyv0Fk1TMazC/JN5DqnBe4T3WwfCyBt/NN1VOPZldz3KGqxFRwl+fgWPKoGRRLiqEkUycE8Y4qcGhGnak6+gAxC6mS5S8SK6EmgDRcCz00412LFx1sb7ryrkpI4DhG9/JQ38D50FmXPipCezxk9mgAaUoHwqcSONVu6n9P1qk9pFfGVUeKzkt8WXHjkNU9UK3KGMmuTIqRUTFVDv8V919Ruu0Af/9k=';
	
	
	
	doc.setFontSize(7);   
	doc.text(5,5,'Av. Hermanos Serdan No. 717 Col. Sn Rafael Poniente, CP 72029 Puebla, Pue. Mexico. 01 (222) 2668330 ext 113. ferias@victorinox.com.mx');

	doc.setFontSize(12); 
	doc.text(5,15,'victorinox');
	doc.text(40,15,'COTIZACION');
	doc.text(80,15,'Puebla Pue, a:  ' + f1.getDate() +  ' de '  + meses1[f1.getMonth()] + ' de ' + f1.getFullYear());
	doc.text(5,20,'Comprador');
	doc.text(80,20,'Agente');
	$.each($('.clave'), function(index, value) {
				valorclave=$(this).val();
				doc.text(5,contador,valorclave);	
					contador = contador + 4;
				});
	//doc.addImage(imgData2, 'JPEG',15, 40, 20, 20);
	//doc.save('ejemplo'+$('#no_cliente').val()+'.pdf');
	// alert(filevar); 
	writer.write(doc.output());
	//var ref = window.open(filevar, '_system','presentationstyle=pagesheet');
	//  window.location.href=writer.fileName;
	// window.open(writer.fileName,'_system' );
	//window.open(writer.fileName,'_system','location=yes,closebuttoncaption="hola",presentationstyle=pagesheet' );
	//window.open(writer.fileName,'_blank','location=yes,closebuttoncaption="hola",presentationstyle=pagesheet'  );
	//window.open(writer.fileName,'_self','location=yes,closebuttoncaption="hola",presentationstyle=pagesheet'  );
	alert(encodeURI(writer.fileName));
	//window.plugin.email.showEmailComposer ();
//	window.plugin.email.open(null,"body","sserrano@victorinox.com.mx",[],[],false);
	//window.plugin.email.open();
	
//	window.plugin.email.open({to:      ['sserrano@victorinox.com.mx'], cc:      ['nbenitez@victorinox.com.mx'],  bcc:     ['sserrano@victorinox.com.mx'],    attachments: [encodeURI(writer.fileName)],  subject: 'Hello World!',   body:    '<h3>TEST</h3><h2>TEST</h2><h1>TEST</h1>',    isHtml:  true});
	// window.plugins.emailComposer.showEmailComposerWithCallbac(callback,'sserrano@victorinox.com.mx','<h3>TEST</h3><h2>TEST</h2><h1>TEST</h1>','sserrano@victorinox.com.mx',NULL,NULL,TRUE,NULL,  NULL);
	
	//showLink(writer.toURI());
	//ExternalFileUtil.openWith(writer.fileName, "com.adobe.pdf");
	//ExternalFileUtil.openWith(writer.fileName, "com.adobe.Adobe-Reader");
	//Cordova.exec(function(winParam) {alert(winParam)},function(error) {alert(error)},"ChildBrowserCommand.showWebPage" , "open");
	//Cordova.exec(function(winParam) {alert(winParam)},function(error) {alert(error)},"com.adobe.pdf", "open" );
	//Cordova.exec(function(winParam) {alert(winParam)},function(error) {alert(error)},"com.adobe.Adobe-Reader", "open" ); 
	/*var $preparingFileModal = $("#preparing-file-modal");
        $preparingFileModal.dialog({ modal: true });
        $.fileDownload(encodeURI(writer.fileName), {
            successCallback: function (url) {
                $preparingFileModal.dialog('close');
            },
            failCallback: function (responseHtml, url) {
                $preparingFileModal.dialog('close');
                $("#error-modal").dialog({ modal: true });
           }
       });
       return false; //this is critical to stop the click event which will trigger a normal file download!*/
	/*ExternalFileUtil.openWith( encodeURI(writer.fileName), "com.adobe.pdf" );
	ExternalFileUtil.openWith( "http://www.tricedesigns.com/temp/drm.pdf", "com.adobe.pdf" );
	ExternalFileUtil.openWith( "http://www.tricedesigns.com/temp/drm.pdf", "com.adobe.Adobe-Reader" );
	ExternalFileUtil.openWith( encodeURI(writer.fileName), "com.adobe.Adobe-Reader" );*/
 	//window.open(writer.fileName, '_system','presentationstyle=UIModalPresentationPageSheet,toolbar=yes,closebuttoncaption=true,location=yes,enableViewportScale=yes');
	// if (!ref) {
	//alert('window.open returned ' + ref);
	//return;

}
function callback(error1) {
	alert(error1);


}

function fail(error) {
	alert(error.code);


}