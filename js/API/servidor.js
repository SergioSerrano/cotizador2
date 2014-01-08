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
	doc.addImage(imgData2, 'JPEG',5, 35,1000,500);
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