<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Cadastro de Disciplina</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cadastrar-disciplina.css">
</head>
<body>

	<header>
		<!-- barra do topo -->
		<div class="container" id="barraTopo">		
			<h4><a href="#" class="navbar-brand">FCA - Cadastro de Disciplina</a></h4>
		</div>
	</header>

	<div class="container" id="conteudoPagina">
	
	<h5>Dados da Disciplina</h5>
	
		<div class="formulario">
			<form action="disciplinas_sistemas" method="post" class="form-horizontal" role="form"> 
				<span id="info_pessoal">Informações Gerais</span>
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Código:</label>
					<div class="col-sm-6 col-md-5">
						<input type="text" class="form-control" name="codigo" placeholder="Apenas números" required />	
					</div>					
				</div>
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Disciplina:</label>
					<div class="col-sm-6 col-md-5">
						<input  type="text" name="nome" class="form-control" placeholder="Nome da disciplina">	
					</div>					
				</div>							

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Curso:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="curso">
							<optgroup label="Gradua��o">
								<option value="1">Administra��o</option>
								<option value="2">Contabilidade</option>
								<option value="3">Redes de Computadores</option>
								<option value="4">Sistemas de Informa��o</option>
							</optgroup>
						</select>	
					</div>					
				</div>							
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Docente:</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="professor">
							<optgroup label="Gradua��o">
								<option value="1">Professor 1</option>
								<option value="2">Professor 2</option>
								<option value="3">Professor 3</option>
								<option value="4">Professor 4</option>
							</optgroup>
						</select>	
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Semestre:</label>	
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="semestre">
							<option selected>Selecione o semestre</option>
							<option value="primeiro semestre">1º</option>
							<option value="segundo semeste">2º</option>
							<option value="terceiro semeste">3º</option>
							<option value="quarto semeste">4º</option>
							<option value="quinto semeste">5º</option>
							<option value="quarto semeste">6º</option>
							<option value="quarto semeste">7º</option>
							<option value="quarto semeste">8º</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<div class="col-sm-offset-4 col-md-1">
							<button type="submit" class="btn btn-primary" id="btn-matricula">Cadastrar</button>		
						</div>							

						<div class="col-sm-offset-6">
							<button type="reset" class="btn btn-primary" id="btn-cancela">Cancelar</button>		
						</div>							
					</div>						
				</div>

			</form>
		</div> <!-- fomulário -->
	</div> <!-- container -->
	
</body>
</html>