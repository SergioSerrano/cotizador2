//Eventos

var index = 0;
$(document).ready(function (e) {
	document.addEventListener("deviceready", function () {

	
	

		var meses = new Array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
		var f = new Date();
		$('#descripcion').val(f.getDate() + " de " + meses[f.getMonth()] + " de " + f.getFullYear());
		//---------------datos 
		
		window.location.href = '#form1';
		
		$('#datos').tap(function () {
			var cla = $('#clave').val();
			obtener_clave(cla);
		});
		
		
		$('#prospectos').tap(function () {
			$('#Comprador').prop('disabled', false);
			$('#agente').prop('disabled', false);
			$('#No_cliente').prop('disabled', true);
			$('#poblacion').prop('disabled', false);
			$('#condic').prop('disabled', false);
			$('#razon').prop('disabled', false);
			$('#estado').prop('disabled', false);
			$('#tel').prop('disabled', false);
			$('#calle').prop('disabled', false);
			$('#cp').prop('disabled', false);
			$('#fax').prop('disabled', false);
			$('#colonia').prop('disabled', false);
			$('#status').prop('disabled', false);
			$('#mail').prop('disabled', false);
			
		});
		
		$( "#autocomplete" ).on( "filterablebeforefilter", function ( e, data ) {
				var $ul = $( this ),
					$input = $( data.input ),
					value = $input.val(),
					html = "";
				$ul.html( "" );
				if ( value && value.length > 2 ) {
					$ul.html( "<li><div class='ui-loader'><span class='ui-icon ui-icon-loading'></span></div></li>" );
					$ul.listview( "refresh" );
					$.ajax({
						url: "http://gd.geobytes.com/AutoCompleteCity",
						dataType: "jsonp",
						crossDomain: true,
						data: {
							q: $input.val()
						}
					})
					.then( function ( response ) {
						$.each( response, function ( i, val ) {
							html += "<li>" + val + "</li>";
						});
						$ul.html( html );
						$ul.listview( "refresh" );
						$ul.trigger( "updatelayout");
					});
				}
			});
		
		
		$('#add_line').tap(function () {
			var tabla = $('#Claves');
			var $linea = $('<tr></tr>');
			$linea.append($('<td></td>').attr({
				id: 'posicion' + index + '1'
			}).html('').css({
				background: '#ebebeb'
			}).addClass("clave"));
			$linea.append($('<td></td>')
				.attr({
				id: 'posicionC' + index + '12'
			})
				.html('')
				.css({
				background: '#ebebeb'
			})
				.addClass("claveTD"));
			$linea.append($('<td></td>')
				.attr({
				id: 'posicion' + index + '2'
			})
				.html('')
				.addClass("cnt"));
			$linea.append($('<td> </td>')
				.attr({
				id: 'posicion' + index + '3'
			}) // añadimos un atributo id
			.html('') // el valor de la celda    
			.css({
				background: '#ebebeb'
			})
				.addClass("descripcion"));
			$linea.append($('<td> </td>')
				.attr({
				id: 'posicion' + index + '4'
			}) // añadimos un atributo id
			.html('') // el valor de la celda
			.addClass("p_unit"));
			$linea.append($('<td> </td>')
				.attr({
				id: 'posicion' + index + '5'
			}) // añadimos un atributo id
			.html('') // el valor de la celda    
			.css({
				background: '#ebebeb'
			})
				.addClass("col_total"));
			$linea.append($('<td> </td>')
				.attr({
				id: 'posicion' + index + '6'
			}) // añadimos un atributo id
			.html('') // el valor de la celda    
			.addClass("gen"));
			tabla.append($linea);
			$('<input  class="clave123" type="text" name="textinput" id="clv" value="" />').appendTo('#posicion' + index + '1');
			$('<input  class="cnt123" type="text" name="textinput" id="cnt" value="" />').appendTo('#posicion' + index + '2');
			$('<a  data-theme="b" href="#" data-transition="none" id="info_com" >X</a>').appendTo('#posicionC' + index + '12');
			index++;
			return false;
		});
		$('#cancela').tap(function () {
			window.location.reload();
		});
		//---------------guarda encuesta
		$('#guarda').tap(function () {
			
			exporta();
			
				
		});
		
		var info = {
				precio: 0,
				descripcion: 1
			};


			$('.clave123').live('change', function() {


				clave = $(this).val();
				var objc = $(this);

				obtener_info_clave(clave, objc);





			});

			$('.cliente123').live('change', function() {


				var cliente = $(this).val();


				obtener_info_cliente(cliente);




			});




			var TEMP_2 = 0;
			var TEMP_3 = 0;

			$('.cnt123').live('change', function() {
				var punit = $(this).parents('tr').children('.p_unit').children('#labo').html();
				var ccont = $(this).val();
				TEMP_2 = (isNaN(parseFloat(punit))) ? 0 : parseFloat(punit);
				TEMP_3 = (isNaN(parseFloat(ccont))) ? 0 : parseFloat(ccont);
				var suma = TEMP_2 * TEMP_3;

				$(this).parents('tr').children('.col_total').children('#lacT').remove();
				$('<label style="visibility:hidden"  data-theme="b" id="lacT">' + suma + '</label>').appendTo($(this).parents('tr').children('.col_total'));

				$(this).parents('tr').children('.col_total').children('#lac').remove();
				$('<label style="text-align:right"  data-theme="b" id="lac" class="cl_stotal">$' + suma.format() + '</label>').appendTo($(this).parents('tr').children('.col_total'));


				var summ = 0;
				var TEMP_ = 0;
				var desc = 0;
				var flete = 0;
				var iva = 0;
				var Mtotal = 0;
				var sub_total = 0;
				$.each($('.col_total'), function(index, value) {
					TEMP_ = (isNaN(parseFloat($(this).children('#lacT').html()))) ? 0 : parseFloat($(this).children('#lacT').html());
					summ = summ + TEMP_;
				});
				$('.t_total').children('#ttB').remove();
				$('<label style="visibility:hidden"  data-theme="b" id="ttB">' + summ + '</label>').appendTo($('.t_total'));
				$('.t_total').children('#tt').remove();
				$('<label style="text-align:right"  data-theme="b" id="tt">$' + summ.format() + '</label>').appendTo($('.t_total'));

				desc = summ * ((100 - $('#c_percent').val()) / 100);


				$('.desc_total').children('#t_descuento').remove();
				$('<label style="text-align:right"  data-theme="b" id="t_descuento">$' + desc.format() + '</label>').appendTo($('.desc_total'));

				flete = $("feteinv").html();

				var check_cat = $("#checkbox1_0").is(":checked");
				if (check_cat) {
					flete = 83.0;
				} else {
					flete = 0;

				}
				sub_total = desc + flete;
				$("#st_m1").html('$' + sub_total.format());
				iva = sub_total * 0.16;

				$("#iva1").html('$' + iva.format());

				Mtotal = iva + sub_total;

				$("#mt1").html('$' + Mtotal.format());




			});

			$('#checkbox1_0').live('change', function() {
				var valflete = 0;
				var check_cat = $("#checkbox1_0").is(":checked");
				if (check_cat) {
					valflete = 83.0;
				} else {
					valflete = 0;

				}
				$(this).parents('tr').children('.flete0').children('#fleteinv').remove();
				$('<label style="visibility:hidden" data-theme="b" id="fleteinv">' + valflete + '</label>').appendTo($(this).parents('tr').children('.flete0'));

				$(this).parents('tr').children('.flete0').children('#flete1').remove();
				$('<label style="text-align:right" data-theme="b" id="flete1">$' + valflete.format() + '</label>').appendTo($(this).parents('tr').children('.flete0'));
				$('.cnt123').change();


			});

			$('#c_percent').live('change', function() {
				$('.cnt123').change();



			});
		
		$('#info_com').live('click', function() {
					$(this).parents('TR').remove();
					$('.cnt123').change();
					return false;
				});
	});
});