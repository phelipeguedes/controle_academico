<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Matr�cula de Aluno</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/matricular-aluno.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/funcoes.js"></script>
</head>

<body>
	
	<header>
		<%-- 
		<!-- barra do topo -->
		<div class="container" id="barraTopo">		
			<li><a href="#" class="navbar-brand">FCA - Matricula de Alunos</a></li>
		</div>
		
		<script>
			$(document).ready(function() {
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
		</script>
		--%>		
		
		<!-- Barra do topo -->
		
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">FCA</a>					
				</div>
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">MATRICULAR ALUNO(A)</span></a></li>
				</ul>				
			</div>
		</nav>
	
		
	</header>

	<h5>Dados do Aluno(a)</h5>

	<div class="container" id="conteudoPagina">
		
		<div class="formulario">
			<form action="aluno" method="post" class="form-horizontal" role="form"> 

			 	<!-- divide em grupos os campos do formul�rio -->

				<span id="info_pessoal">Informa��es Pessoais</span>
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Nome:</label>
					<div class="col-sm-6 col-md-5">
						<input type="text" class="form-control" name="nome" id="nome" placeholder="Nome completo" required />	
					</div>					
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Sexo:</label>
					<div class="col-sm-6 col-md-6">
						
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="radio" value="Feminino">Feminino
							</label>
						</div>
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="radio" value="Masculino">Masculino
							</label>
						</div>

					</div>
				</div> <!-- form-group -->				
				
				<!-- divide em grupos os campos do formul�rio -->

				<span id="info_logradouro">Informa��es do Endere�o</span>

				<div class="form-group">
					
					<label for="" class="control-label col-sm-2 col-md-4">Cidade</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" class="form-control" name="cidade" id="cidade">
					</div>
				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Bairro</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="bairro" id="bairro">		
							<option value="outro">Outro</option>					
							<option value="Aerol�ndia" selected>Aerol�ndia</option>
							<option value="Aeroporto">Aeroporto</option>
							<option value="Alagadi�o Novo">Alagadi�o Novo</option>
							<option value="Aldeota">Aldeota</option>
							<option value="Alvaro Wayne">Alvaro Wayne</option>
							<option value="Amadeu Furtado">Amadeu Furtado</option>
							<option value="Ancuri">Ancuri</option>
							<option value="Ant�nio Bezerra">Ant�nio Bezerra</option>
							<option value="Autran Nunes">Autran Nunes</option>
							<option value="Barra do Cear�">Barra do Cear�</option>
							<option value="Barroso">Barroso</option>
							<option value="Bela Vista">Bela Vista</option>
							<option value="Benfica">Benfica</option>
							<option value="Bom Jardim">Bom Jardim</option>
							<option value="Bom Sucesso">Bom Sucesso</option>
							<option value="Cais do Porto">Cais do Porto</option>
							<option value="Cajazeiras">Cajazeiras</option>
							<option value="Cambeba">Cambeba</option>
							<option value="Canidezinho">Canidezinho</option>
							<option value="Carlito Pamplona">Carlito Pamplona</option>
							<option value="Castel�o">Castel�o</option>
							<option value="Centro">Centro</option>
							<option value="Cidade 2000">Cidade 2000</option>
							<option value="Cidade dos Funcion�rios">Cidade dos Funcion�rios</option>
							<option value="Coc�">Coc�</option>
							<option value="Conjunto Cear�">Conjunto Cear�</option>
							<option value="Conjunto Esperan�a">Conjunto Esperan�a</option>
							<option value="Couto Fernandes">Couto Fernandes</option>
							<option value="Curi�">Curi�</option>
							<option value="Damas">Damas</option>
							<option value="Edson Queiroz">Edson Queiroz</option>
							<option value="F�tima">F�tima</option>
							<option value="Geniba�">Geniba�</option>
							<option value="Granja Portugal">Granja Portugal</option>
							<option value="Henrique Jorge">Henrique Jorge</option>
							<option value="Ita�ca">Ita�ca</option>
							<option value="Jacarecanga">Jacarecanga</option>
							<option value="Jo�o XXIII">Jo�o XXIII</option>
							<option value="Jockey Clube">Jockey Clube</option>								
						</select>
					</div>
				</div>					

				<div class="form-group">
					
					<label class="control-label col-md-4">Endere�o:</label>					
					<div class="col-sm-5 col-md-5">
						<input type="text" name="endereco" id="endereco" class="form-control" placeholder="Rua, N�">
					</div>
				</div>

				<div class="form-group">
					
					<label class="control-label col-md-4">Cep:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cep" id="cep" class="form-control" maxlength="9" placeholder="Apenas N�meros">
					</div>
				</div>
				
				<!-- divide em grupos os campos do formulário -->

				<span id="info_academicas">Informa��es Acad�micas</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Curso:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="curso" id="curso">
							<option selected>Selecione o curso</option>
							<optgroup label="Gradua��o">
								<option value="1">Administra��o de Empresas</option>
								<option value="2">Ci�ncias Cont�beis</option>
								<option value="3">Redes de Computadores</option>
								<option value="4">Sistemas de Informa��o</option>
							</optgroup>

							<optgroup label="Extens�o">
								<optgroup label="Administra��o">
									<option>Adm e Desenvolvimento Empresarial</option>
									<option>Administra��o P�blica</option>	
								</optgroup>	

								<optgroup label="Cont�beis">
									<option>Consultoria Empresarial</option>
									<option>Gest�o de Contas P�blicas</option>
								</optgroup>	

								<optgroup label="Redes">
									<option>Seguran�a de Redes de Computadores</option>
									<option>Seguran�a da Informa��o</option>
								</optgroup>

								<optgroup label="Sistemas de Informa��o">
									<option>Desenvolvimento Mobile</option>
									<option>Design Digital</option>
								</optgroup>							
							</optgroup>
						</select>							
					</div>					
				</div>
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Semestre:</label>
					<div class="col-sm-6 col-md-5">
						<select name="semestre" class="form-control" id="semestre">
							<option selected>Selecione o semestre</option>
							<option value="1�">1� Semestre</option>	
							<option value="2�">2� Semestre</option>
							<option value="3�">3� Semestre</option>
							<option value="4�">4� Semestre</option>
							<option value="5�">5� Semestre</option>
							<option value="6�">6� Semestre</option>
							<option value="7�">7� Semestre</option>
							<option value="8�">8� Semestre</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Disciplinas:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" id="disciplinas">
							<option>Selecione as Disciplinas</option>						
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Turno:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="turno" id="turno">
							<option selected>Selecione o turno</option>
							<option value="Diurno">Diurno</option>	
							<option value="Noturno">Noturno</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Financiamento:</label>
					<div class="col-sm-6 col-md-5">						
						<select class="form-control" name="financiamento" id="financiamento">							
							<option selected>Selecione o financiamento</option>
							<option value="Educa Mais">Educa Mais</option>
							<option value="Fies">Fies</option>
							<option value="Prouni">Prouni</option>
							<option value="Pra Valer">Pra Valer</option>							
							<option value="N�o Possui">N�o possui</option>
						</select>
					</div>
				</div>		
				
				<!-- divide em grupos os campos do formulário -->

				<span id="info_contato">Informa��es de Contato</span>

				<div class="form-group">
					<label class="control-label col-md-4">Telefone:</label>
					<div class="col-sm-5 col-md-5">
						<input type="tel" name="telefone" id="telefone" class="form-control" maxlength="14" placeholder="Apenas N�meros">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Email:</label>
					<div class="col-sm-5 col-md-5">
						<input type="email" name="email" id="email" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-md-4">Senha:</label>
					<div class="col-sm-5 col-md-5">
						<input type="password" name="senha" class="form-control">
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm5 col-md-6 col-sm-offset-4">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="termo" required>Li e estou de acordo com os <a href="#">termos</a> desta institui��o.
							</label>
						</div>
					</div>
				</div>	

				<div class="form-group">
					<div class="row">
						<div class="col-sm-offset-4 col-md-1">
							<button type="submit" class="btn btn-primary" id="btn-matricula">Matricular</button>		
						</div>							

						<div class="col-sm-offset-6">
							<button type="reset" class="btn btn-primary" id="btn-cancela">Cancelar</button>		
						</div>							
					</div>						
				</div>

			</form>
		</div> <!--- container -->
	</div> <!--- formulário -->
	
	<!--  Rodapé-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acad�mico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>