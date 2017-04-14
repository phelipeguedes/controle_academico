<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Cadastro de Professor(a)</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="js/funcoes.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cadastrar-professor.css">
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
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACAD�MICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">CADASTRAR PROFESSOR</a></li>
				</ul>			
			</div>	
		</nav>
	</header>

	<h5>Dados do Professor(a)</h5>

	<div class="container" id="conteudoPagina">
		<div class="formulario">
			<form action="professores" method="post" class="form-horizontal" role="form"> 
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
								<input type="radio" name="sexo" id="femaleRadio" value="Feminino">Feminino
							</label>
						</div>
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="maleRadio" value="Masculino">Masculino
							</label>
						</div>

					</div>
				</div> <!-- form-group -->				
				
				<!-- divide em grupos os campos do formulário -->

				<span id="info_logradouro">Informa��es do Logradouro</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Cidade</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cidade" id="cidade" class="form-control" name="cidade">
					</div>
				</div>
				
				<!-- lista de bairros de Fortaleza -->

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Bairro</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="bairro" id="bairro">
							<option>Outro</option>
							<option selected>Aerol�ndia</option>
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
							<option value="Bom Jardin">Bom Jardin</option>
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
							<option>Selecione o curso</option>	
							<option value="1">Administra��o de Empresas</option>
							<option value="2">Ci�ncias Cont�beis</option>
							<option value="3">Redes de Computadores</option>
							<option value="4">Sistemas de Informa��o</option>							
						</select>							
					</div>					
				</div> <!-- form-group -->
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Disciplina:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="disciplina" id="disciplina">
							<option value="1">Algoritmos</option>
							<option value="2">Arquitetura de Computadores</option>
							<option value="3">Banco de Dados I</option>
							<option value="4">Banco de Dados II</option>
							<option value="5">C�lculo Dif. Int.</option>
							<option value="6">Desenvolvimento de Sistemas I</option>
							<option value="7">Desenvolvimento de Sistemas II</option>
							<option value="8">Economia</option>
							<option value="9">Engenharia de Software</option>							
							<option value="10">Estat�stica</option>
							<option value="11">Estrutura de Dados</option>
							<option value="12">Fundamentos da Administra��o</option>	
							<option value="13">Gest�o de TI</option>
							<option value="14">Intro Inform�tica</option>
							<option value="15">Ingl�s T�cnico</option>
							<option value="16">Matem�tica Dscreta</option>
							<option value="17">POO</option>
							<option value="18">PORTUGU�S</option>							
							<option value="19">Progama��o Estruturada</option>							
							<option value="20">Redes de Computadores</option>														
						</select>
					</div>

				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Turno:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="turno" id="turno">
							<option value="Diurno">Diurno</option>	
							<option value="Noturno">Noturno</option>
							<option value="Diurno e Noturno">Diurno e Noturno</option>
						</select>
					</div>

				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">T�tulo:</label>
					<dv class="col-sm-6 col-md-5">
						<select class="form-control" name="titulo">
							<option value="Bacharel">Gradua��o</option>
							<option value="Especializa��o">Especializa��o</option>
							<option value="Mestre">Mestrado</option>
							<option value="Doutor">Doutorado</option>
							<option value="P�s-Doutorado">P�s-Doutorado</option>
						</select>	
					</dv>

				</div>					
				
				<!-- divide em grupos os campos do formul�rio -->

				<span id="info_contato">Informa��es da Conta e de Contato</span>

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
					<label class="control-label col-md-4">Nome de Usu�rio:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="nomeDeUsuario" id="email" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-md-4">Senha:</label>
					<div class="col-sm-5 col-md-5">
						<input type="password" name="senha" id="senha" class="form-control">
					</div>
				</div>				

				<div class="form-group">
					<div class="col-sm5 col-md-6 col-sm-offset-4">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="termo" required>Li e estou de acordo com os <a href="#">termos</a> desta instituição.
							</label>
						</div>
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
		</div> <!-- fomul�rio -->
	</div> <!-- container -->
	
	<!--  Rodap�-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acad�mico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>