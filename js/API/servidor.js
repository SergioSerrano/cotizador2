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
	var imgData2='data:image/jpeg;base64,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';
	
	
	
	doc.setFontSize(12);   
	doc.text(5,15,'Av. Hermanos Serdan No. 717 Col. Sn Rafael Poniente, CP 72029 Puebla, Pue. Mexico. 01 (222) 2668330 ext 113.');
	doc.text(5,20,'ferias@victorinox.com.mx');
	doc.addImage(imgData2, 'JPEG',5, 35);
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