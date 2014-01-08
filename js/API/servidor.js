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
	doc.addImage(imgData2, 'JPEG', 5, 35, 5, 10);
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