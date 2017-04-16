<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Painel Secretaria</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/painel_secretaria.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>	
</head>

<body>
	
	<div id="container">
		<div class="conteudo_topbar">
			<div class="container-fluid">
				<div class="topbar">
					<div class="topbar-inner">
						<div class="container">
							<h3>Controle AcadÍmico</h3>
							<h5>Secretaria</h5>	
						</div>				
					</div>
				</div>
			</div>
		</div> <!-- conte√∫do topbar -->

		<div id="conteudo-barra_lateral">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="home.jsp">Faculdade FCA</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="arquivos/manual-do-aluno.pdf" target="blank">MANUAL DO ALUNO</a></li>
							<li><a href="matricularAluno.jsp" target="_blank">MATRÕçCULA</a></li>
							<li><a href="painelAlunoSecretaria.jsp" target="_blank">PAINEL</a></li>
							<li><a href="#">NOTAS</a></li>
							<li><a href="#">FREQUENCIA</a></li>
							<li><a href="#">HIST”RICO</a></li>
						</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PROFESSORES<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="professoresAdministracaoCadastrados.jsp" target="_blank">ADMINISTRA«√O DE EMPRESAS</a></li>
							<li><a href="professoresContabeisCadastrados.jsp" target="_blank">CI NCIAS CONT¡BEIS</a></li>
							<li><a href="professoresRedesCadastrados.jsp" target="_blank">REDES DE COMPUTADORES</a></li>
							<li><a href="professoresSistemasCadastrados.jsp" target="_blank">SISTEMAS DE INFORMA«√O</a></li>
						</ul>
					</li>
					
					<li><a href="#">TESOURARIA</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PR…-MATRÕCULAS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="preMatriculasAdministracaoRealizadas.jsp" target="_blank">Administracao</a></li>
							<li><a href="preMatriculasContabeisRealizadas.jsp" target="_blank">Contabeis</a></li>
							<li><a href="preMatriculasRedesRealizadas.jsp" target="_blank">Redes</a></li>
							<li><a href="preMatriculasSistemasRealizadas.jsp" target="_blank">Sistemas</a></li>
						</ul>
					</li>
					
					<li><a href="#">PROCESSO SELETIVO</a></li>
					
					<li><a href="logout.jsp">SAIR</a></li>				
				</ul>
			</div>	
		</div> <!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4">
							<img src="img/documento-autentico.jpg" alt="autenticacao" id="documento">
							<a href="#" class="icone"><h4>AutenticaÁ„o de Documentos</h4></a>
							<p>Efetuar autenticaÁ„o de documentos emitidos</p>
						</div>	

						<div class="col-sm-4">
							<img src="img/calendario-academico-1.jpg" alt="calendario" id="calendario">
							<a href="assets/arquivos/calendario-academico.pdf" target="blank" class="icone"><h4>Calend·rio AcadÍmico</h4></a>
							<p>Consula ao calend·rio AcadÍmico da FCA</p>
						</div>

						<div class="col-sm-4">
							<img src="img/icone_professor.png" alt="docentes" id="docentes">
							<a href="#"><h4>Docentes</h4></a>
							<p>Acesse as p·ginas p˙blicas dos docentes</p>
						</div>
					</div>

					<div class="row linha2">
						<div class="col-sm-4">
							<img src="img/coordenador.jpg" alt="coordenacao e direcao" id="coordenador">
							<a href="#"><h4>CoordenaÁ„o e DireÁ„o</h4></a>
							<p>Consulta aos diretores e coordenadores dos departamentos</p>
						</div>

						<div class="col-sm-4">
							<img src="img/coordenacao.png" alt="departamentos" id="dep_coord">
							<a href="#"><h4>Departamenos</h4></a>
							<p>InformaÁıes sobre todos os departamentos da FCA</p>
						</div>		

						<div class="col-sm-4">
							<img src="img/pos-graduacao-6.jpg" alt="pos-graduacao" id="pos">
							<a href="#"><h4>Programas de GraduaÁ„o e PÛs</h4></a>
							<p>InformaÁıes acerca dos programas da instituiÁ„o</p>
						</div>				

					</div> <!--- row linha 2 -->

				</div> <!-- container-fluid -->

			</section>

		</div> <!-- conteudo-principal -->

	</div> <!-- container -->

</body>
</html>