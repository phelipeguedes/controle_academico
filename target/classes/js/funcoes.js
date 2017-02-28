/**
 * 
 */

$(document).ready(function() {
	$("#nome").keyup(function() {
		$("#nome").val($(this).val().toUpperCase());
	});

	$("#sexo").keyup(function() {
		$("#sexo").val($(this).val().toUpperCase());
	});

	$("#cidade").keyup(function() {
		$("#cidade").val($(this).val().toUpperCase());
	});

	$("#endereco").keyup(function() {
		$("#endereco").val($(this).val().toUpperCase());
	});

	$("#cep").keypress(function() {
		if ($("#cep").val().length == 5) {
			$("#cep").val($("#cep").val() + "-");
		}
	});

	$("#telefone").keypress(function() {
		if ($("#telefone").val().length == 0) {
			$("#telefone").val($("#telefone").val() + "(");
		}

		if ($("#telefone").val().length == 3) {
			$("#telefone").val($("#telefone").val() + ")");
		}

		if ($("#telefone").val().length == 9) {
			$("#telefone").val($("#telefone").val() + ".");
		}
	});

	$("#email").keyup(function() {
		$("#email").val($(this).val().toLowerCase());
	});

	$('#semestre').change(function(event) {
		var semestre = $("select#semestre").val();
		$.get('JsonServlet', {
			semestreEscolhido : semestre
		}, function(response) {

			var select = $('#disciplinas');
			select.find('option').remove();
			$.each(response, function(index, value) {
				$('<option>').val(value).text(value).appendTo(select);
			});
		});

	});

});
