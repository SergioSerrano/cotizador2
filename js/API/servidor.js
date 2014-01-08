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
	var doc = new jsPDF();
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
	doc.setFontSize(12);
    
	doc.text(20,15,'Av. Hermanos Serdan No. 717 Col. Sn Rafael Poniente, CP 72029 Puebla, Pue. Mexico. 01 (222) 2668330 ext 113.');
	doc.text(20,20,'ferias@victorinox.com.mx');
	doc.addImage('data:image/png;base64,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', 'PNG', 20, 35, 180, 138);
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
	window.plugin.email.open();
	
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