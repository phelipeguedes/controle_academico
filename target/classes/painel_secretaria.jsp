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
							<h3>Controle Acad�mico</h3>
							<h5>Secretaria</h5>	
						</div>				
					</div>
				</div>
			</div>
		</div> <!-- conteúdo topbar -->

		<div id="conteudo-barra_lateral">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="home.html">Faculdade FCA</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="arquivos/manual-do-aluno.pdf" target="blank">MANUAL DO ALUNO</a></li>
							<li><a href="matricular-aluno.jsp" target="_blank">MATRÍCULA</a></li>
							<li><a href="painel-aluno.jsp" target="_blank">PAINEL</a></li>
							<li><a href="#">NOTAS</a></li>
							<li><a href="#">FREQUENCIA</a></li>
							<li><a href="#">HISTÓRICO</a></li>
						</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">CADASTRO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="disciplinas-cadastradas.jsp" target="_blank">LISTA DE DISCIPLINAS</a></li>
							<li><a href="professores-cadastrados.jsp" target="_blank">LISTA DE PROFESSORES</a></li>
						</ul>
					</li>
					
					<li><a href="#">TESOURARIA</a></li>
					
					<li><a href="#">PROCESSO SELETIVO</a></li>				
				</ul>
			</div>	
		</div> <!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-4">
							<img src="img/documento-autentico.jpg" alt="autenticacao" id="documento">
							<a href="#" class="icone"><h4>Autenticação de Documentos</h4></a>
							<p>Efetuar autenticação de documentos emitidos</p>
						</div>	

						<div class="col-sm-4">
							<img src="img/calendario-academico-1.jpg" alt="calendario" id="calendario">
							<a href="assets/arquivos/calendario-academico.pdf" target="blank" class="icone"><h4>Calendário Acadêmico</h4></a>
							<p>Consula ao calendário Acadêmico da FCA</p>
						</div>

						<div class="col-sm-4">
							<img src="img/icone_professor.png" alt="docentes" id="docentes">
							<a href="#"><h4>Docentes</h4></a>
							<p>Acesse as páginas públicas dos docentes</p>
						</div>
					</div>

					<div class="row linha2">
						<div class="col-sm-4">
							<img src="img/coordenador.jpg" alt="coordenacao e direcao" id="coordenador">
							<a href="#"><h4>Coordenação e Direção</h4></a>
							<p>Consulta aos diretores e coordenadores dos departamentos</p>
						</div>

						<div class="col-sm-4">
							<img src="img/coordenacao.png" alt="departamentos" id="dep_coord">
							<a href="#"><h4>Departamenos</h4></a>
							<p>Informações sobre todos os departamentos da FCA</p>
						</div>		

						<div class="col-sm-4">
							<img src="img/pos-graduacao-6.jpg" alt="pos-graduacao" id="pos">
							<a href="#"><h4>Programas de Graduação e Pós</h4></a>
							<p>Informações acerca dos programas da instituição</p>
						</div>				

					</div> <!--- row linha 2 -->

				</div> <!-- container-fluid -->

			</section>

		</div> <!-- conteudo-principal -->

	</div> <!-- container -->

</body>
</html>