<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Cadastro de Disciplina</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/funcoes.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cadastrar-disciplina.css">
</head>
<body>

	<header>
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACADÊMICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">CADASTRAR DISCIPLINA</a></li>
				</ul>			
			</div>	
		</nav>
	</header>

	<div class="container" id="conteudoPagina">
	
	<h5>Dados da Disciplina</h5>
	
		<div class="formulario">
			<form action="disciplinas" method="post" class="form-horizontal" role="form"> 
				<span id="info_pessoal">Informações Gerais</span>
								
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Disciplina:</label>
					<div class="col-sm-6 col-md-5">
						<input  type="text" name="nome_disciplina" id="nome_disciplina" class="form-control" placeholder="Nome da disciplina">	
					</div>					
				</div>	
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Sigla:</label>
					<div class="col-sm-6 col-md-5">
						<input type="text" class="form-control" name="sigla" id="sigla" placeholder="Escolha uma sigla" required />	
					</div>					
				</div>						

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Curso:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="curso" id="curso">							
							<option value="4">SISTEMAS DE INFORMAÇÃO</option>							
						</select>	
					</div>					
				</div>							
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Docente:</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="professor" id="professor">
							<optgroup label="Graduação">
								<option value="1">Professor 1</option>
								<option value="2">Professor 2</option>
								<option value="3">Professor 3</option>
								<option value="4">Professor 4</option>
								<option value="5">Professor 5</option>
								<option value="6">Professor 6</option>
								<option value="7">Professor 7</option>
								<option value="8">Professor 8</option>
								<option value="9">Professor 9</option>
								<option value="10">Professor 10</option>
							</optgroup>
						</select>	
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Semestre:</label>	
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="semestre">
							<option selected>Selecione o semestre</option>
							<option value="1º">1º</option>
							<option value="2º">2º</option>
							<option value="3º">3º</option>
							<option value="4º">4º</option>
							<option value="5º">5º</option>
							<option value="6º">6º</option>
							<option value="7º">7º</option>
							<option value="8º">8º</option>
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
		</div> <!-- fomulÃ¡rio -->
	</div> <!-- container -->
	
</body>
</html>