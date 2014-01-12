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
	doc.text(120,lineas,'VICTORINOX');
	lineas=lineas+10;
	doc.text(60,lineas,'COTIZACION');
	doc.text(120,lineas,'Puebla Pue, a:  ' + f1.getDate() +  ' de '  + meses1[f1.getMonth()] + ' de ' + f1.getFullYear());
	lineas=lineas+10;
	doc.text(5,lineas,'Comprador');
	doc.text(120,lineas,'Agente');
	
	lineas=lineas+5;
	var comp=$('#Comprador').val();
	alert(comp);
	//doc.text(5,lineas,comp);
	var agente=$('#agente').val();
	alert(agente);
	//doc.text(120,lineas,agente);
	
	lineas=lineas+5;
	doc.text(5,lineas,'Cliente');
	doc.text(60,lineas,'Poblacion');
	doc.text(120,lineas,'Condiciones');
	
	lineas=lineas+5;
	var no_cliente=$('#no_cliente').val();
	//doc.text(5,lineas,no_cliente);
	var poblacion=$('#poblacion').val();
	//doc.text(120,lineas,poblacion);
	var condic=$('#condic').val();
	//doc.text(5,lineas,condic);
	
	lineas=lineas+5;
	
	doc.text(5,lineas,'Razon Social');
	doc.text(60,lineas,'Estado');
	doc.text(120,lineas,'Telefono');
	
	lineas=lineas+5;
	var razon=$('#razon').val();
	//doc.text(5,lineas,razon);
	var estado=$('#estado').val();
	//doc.text(120,lineas,estado);
	var tel=$('#tel').val();
	//doc.text(5,lineas,tel);
	
	lineas=lineas+5;
	doc.text(5,lineas,'Calle');
	doc.text(60,lineas,'C.P.');
	doc.text(120,lineas,'Fax');
	
	
	lineas=lineas+5;
	var calle=$('#calle').val();
	//doc.text(5,lineas,calle);
	var cp=$('#cp').val();
	//doc.text(120,lineas,cp);
	var fax=$('#fax').val();
	//doc.text(5,lineas,fax);
	
	
	lineas=lineas+5;
	doc.text(5,lineas,'Colonia');
	doc.text(60,lineas,'Status');
	doc.text(120,lineas,'Mail');
	
	lineas=lineas+5;
	//var colonia=$('#colonia').val();
	//doc.text(5,lineas,colonia);
	var status=$('#status').val();
	//doc.text(120,lineas,status);
	var  mail=$('#mail').val();
	//doc.text(5,lineas,mail);
	
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
				doc.text(115,contador,valorclave);	
					contador = contador + 5;
				});
	
	contador=lineas+50;
	$.each($('.cl_stotal'), function(index, value) {
				valorclave=$(this).text();
				doc.text(135,contador,valorclave);	
					contador = contador + 5;
				});
	lineas=contador;
	
	lineas=lineas+5;
	var tt=$('#tt').text();
	//doc.text(130,lineas,tt);
	
	doc.text(120,lineas,'Descuento');
	
	lineas=lineas+5;
	
	var t_descuento=$('#t_descuento').val();
	
	//doc.text(130,lineas,t_descuento);
	
	lineas=lineas+5;
	//doc.text(130,lineas,t_descuento);
	
	
	doc.addImage(imgData2, 'jpg',15, 40, 170, 170);
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