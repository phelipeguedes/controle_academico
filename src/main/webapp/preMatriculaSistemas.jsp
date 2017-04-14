<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Sistemas | PrÈ-MatrÌcula</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/pre-matricula.css"/>
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/funcoes.js"></script>
</head>

<body>

	<!-- barra do menu -->
	<nav class="navbar navbar-inverse" brand="Faculdade" fixed="top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><img src="img/logo3.jpg"></a>
			</div>

			<div class="collapse navbar-collapse" id="navBar">
				<ul class="nav navbar-nav" id="nav">
					<li class="current"><a href="home.jsp">HOME</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">							
							<li><a href="arquivos/calendario-academico.pdf" target="_blank">CALEND¡ÅRIO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL DO ALUNO</a></li>
							<li><a href="matriculaOnline.jsp" target="_blank">MATRIçCULA</a></li>
							<li><a href="#">PROCESSO SELETIVO</a></li>
						</ul>
					</li>

					<li><a href="login.html" target="_blank">CONTROLE ACAD MICO</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CURSOS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">GRADUA«√O</a></li>
							<li><a href="#">EXTENS√ÉO</a></li>
						</ul>
					</li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">BIBLIOTECA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">CONSULTA AO ACERVO</a></li>	
							<li><a href="#">REGULAMENTO</a></li>	
						</ul>					
					</li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">INSTITUCIONAL<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HIST”ìRIA</a></li>
						</ul>
					</li>					
					
					<li><a href="ead.jsp" target="_blank">EAD</a></li>

					<li><a href="#">CONTATO</a></li>									
				</ul>

			</div>	<!-- collapse navbar-collapse -->	
		</div> 	<!-- container-fluid -->
	</nav>	

	<div class="container-fluid">
		<h3>Sistema de PrÈ-MatrÌcula</h3>
		<hr>
		<p>Preencha os dados abaixo e a FCA entrar· em contato para finalizar  sua matrÌcula.</p>
	</div>	

	<div class="container">
		<form action="pre_matricula" method="post" class="form-horizontal" role="form">
			<span>Dados Pessoais</span>
			
			<div class="form-group">					
				<label class="control-label col-md-4">Nome:</label>
				<div class="col-md-4">
					<input type="text" name="nome" id="nome" class="form-control" placeholder="Nome completo">
				</div>
			</div>	
			
			<div class="form-group">					
				<label class="control-label col-md-4">Sexo:</label>
				<div class="col-md-4">
					<select class="form-control" name="sexo">
						<option value="Masculino">Masculino</option>
						<option value="Feminino">Feminino</option>
					</select>
				</div>
			</div>
			
			<!-- 	
			<div class="form-group">					
				<label class="control-label col-md-4">Nascimento:</label>
				<div class="col-md-4">						
					<input type="date" class="form-control" name="nascimento">			
				</div>
			</div>
			-->	

			<span>EndereÁo Residencial</span>
			
			<div class="form-group">
				<label class="control-label col-md-4">Cidade:</label>
				<div class="col-md-4">
					<input type="text" class="form-control " name="cidade" id="cidade" placeholder="Informe o nome de sua cidade">
				</div>						
			</div>
			
			<div class="form-group">					
				<label class="control-label col-md-4">Cep:</label>
				<div class="col-md-4">
					<input type="text" name="cep" id="cep" class="form-control" maxlength="9" placeholder="Somente n˙meros">
				</div>					
			</div>	
			
			<div class="form-group">
				<label class="control-label col-md-4">EndereÁo:</label>
				<div class="col-md-4">
					<input type="text" class="form-control " name="logradouro" id="endereco" placeholder="Rua, N∫, Bairro">
				</div>						
			</div>
			
			<span>Sobre o Curso</span>
			<div class="form-group">					
				<label class="control-label col-md-4">Curso:</label>
				<div class="col-md-4">
					<select class="form-control" name="curso">
						<option>Selecione o curso</option>						
						<option value="4">Sistemas de InformaÁ„o</option>
					</select>
				</div>
			</div>	

			<div class="form-group">
				<label class="control-label col-md-4">Turno:</label>
				<div class="col-md-4">
					<select class="form-control" name="turno">
						<option>Selecione um turno</option>
						<option value="Diurno">Diurno</option>
						<option value="Noturno">Noturno</option>
					</select>
				</div>
			</div>
			
			<span>Contato</span>
			<div class="form-group">					
				<label class="control-label col-md-4">Telefone:</label>
				<div class="col-md-4">
					<input type="tel" name="telefone" id="telefone" class="form-control" maxlength="14" placeholder="Somente n˙meros" required>
				</div>					
			</div>	
			
			<div class="form-group">					
				<label class="control-label col-md-4">Email:</label>
				<div class="col-md-4">
					<input type="email" name="email" id="email" class="form-control" placeholder="Insira um email para contato" required>
				</div>					
			</div>	

			<div class="form-group">
				<div class="row">
					<div class="col-sm-offset-4 col-md-1">
						<button class="btn btn-primary" type="submit" id="btn-envia">Enviar</button>		
					</div>							
					
					<div class="col-sm-offset-1">
						<button class="btn btn-primary" type="reset" id="btn-cancela">Cancelar</button>		
					</div>							
				</div>						
			</div>
		</form>	
	</div>
	
	<!--  RodapÈ-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle AcadÍmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>