<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Painel Coordenação</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/painel_coordenacao.css">
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
							<h3>Controle Acadêmico</h3>
							<h5>Departamento de Tecnologia da Informação</h5>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- conteúdo topbar -->

		<!-- barra lateral (sidebar) -->

		<div id="conteudo-barra_lateral">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>

			<!-- collapse: ao redimensionar a tela, os menus da barra ficam escondidos no botão -->

			<div class="collapse navbar-collapse" id="navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="home.jsp">Faculdade FCA</a></li>	
					<li class=""><a href="#">ASSUNTOS ACADÊMICOS</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="alunosMatriculados.jsp" target="_blank">LISTA DE ALUNOS</a></li>
							<li><a href="matricular-aluno.jsp" target="_blank">MATRÍCULA</a></li>				
							<li><a href="#">SITUAÇÃO ACADÊMICA</a></li>
						</ul>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PROFESSOR<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="cadastrar-professor.jsp" target="_blank">CADASTRO</a></li>
							<li><a href="professores-cadastrados.jsp" target="_blank">LISTA DE PROFESSORES</a></li>
						</ul>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">SECRETARIA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="cadastrarSecretaria.jsp" target="_blank">CADASTRO</a></li>
							<li><a href="secretariasCadastradas.jsp" target="_blank">LISTA DE SECRETARIAS</a></li>
						</ul>
					</li>

					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">DISCIPLINAS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="cadastrar-disciplina.jsp" target="_blank">CADASTRO</a></li>
						<li><a href="disciplinas-cadastradas.jsp" target="_blank">CONSULTA</a></li>
					</ul>
					</li>
				</ul>
			</div>
		</div>
		
		<div id="conteudo_principal">			
			<section>
				<div class="container-fluid">
					<div class="row"> <!-- row: mantém os elementos na mesma linha -->
						<div class="col-lg-12 col-md-12">
							<h4>Coordenação Acadêmica</h4>			

							<p>
								A Coordenacao Acadêmica integra a chefia de departamentos das áreas da instituição com a finalidade de coordenar as atividades relacionadas ao ensino e a aproximação dos alunos com o mecado de trabalho, por meio da atualização curricular, pesquisas, atividades complementares e estágio nos respectivos departamentos.
							</p>
							
							<br/>

							<p>
								O setor propõe e coordena atividades de execução dos cursos, preza pela qualidade do ensino, aprendizagem e valores ensinados na instituição. É resposabilidade do coordenador assegurar a integração disciplinar e o acompanhamento dos docentes, no âmbito educacional, mantendo a integridade pedagógica e institucional.
							</p>
							
							<br/>

							<p>
								Também cabe a este participar na elaboração do planejamento geral das atividades do Departamento e na criação dos relatórios de gestão. 

							</p>
							
							<br/>

							<p>
								<strong>Coordenador Acadêmico:</strong> Pedro Phelipe de Castro Guedes 
								<br/>
								<strong>Contato:</strong> (85)98905.7205 | phelipe.guedes@hotmail.com
							</p>

						</div>	<!-- col-lg-12 col-md-12 -->				

					</div> <!-- row -->

				</div> <!--- container-fluid -->			

			</section>

		</div> <!--- conteudo-principal -->

	</div> <!-- container -->
	
</body>
</html>