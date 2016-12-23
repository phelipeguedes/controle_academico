<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Painel Coordena��o</title>
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
							<h3>Controle Acad�mico</h3>
							<h5>Departamento de Tecnologia da Informa��o</h5>
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
					<li class=""><a href="#">ASSUNTOS ACAD�MICOS</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="alunosMatriculadosSistemas.jsp" target="_blank">LISTA DE ALUNOS</a></li>
							<li><a href="matricularAlunoSistemas.jsp" target="_blank">MATR�CULA</a></li>				
							<li><a href="#">SITUA��O ACAD�MICA</a></li>
						</ul>
					</li>
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">PROFESSOR<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="cadastrarProfessorSistemas.jsp" target="_blank">CADASTRO</a></li>
							<li><a href="professoresSistemasCadastrados.jsp" target="_blank">LISTA DE PROFESSORES</a></li>
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
						<li><a href="cadastrarDisciplinasSistemas.jsp" target="_blank">CADASTRO</a></li>
						<li><a href="disciplinasSistemasCadastradas.jsp" target="_blank">CONSULTA</a></li>
					</ul>
					</li>
					
					<li><a href="home.jsp">SAIR</a></li>
				</ul>
			</div>
		</div>
		
		<div id="conteudo_principal">			
			<section>
				<div class="container-fluid">
					<div class="row"> <!-- row: mantém os elementos na mesma linha -->
						<div class="col-lg-12 col-md-12">
							<h4>Coordena��o Acad�mica</h4>			

							<p>
								A Coordenacao Acad�mica integra a chefia de departamentos das �reas da institui��o com a finalidade de coordenar as atividades relacionadas ao ensino e a aproxima��o dos alunos com o mecado de trabalho, por meio da atualiza��o curricular, pesquisas, atividades complementares e est�gio nos respectivos departamentos.
							</p>
							
							<br/>

							<p>
								O setor prop�e e coordena atividades de execu��o dos cursos, preza pela qualidade do ensino, aprendizagem e valores ensinados na institui��o. A responsabilidade do coordenador assegurar a integra��o disciplinar e o acompanhamento dos docentes, no �mbito educacional, mantendo a integridade pedag�gica e institucional.
							</p>
							
							<br/>

							<p>
								Tamb�m cabe a este participar na elabora��o do planejamento geral das atividades do Departamento e na cria��o dos relat�rios de gest�o. 

							</p>
							
							<br/>

							<p>
								<strong>Coordenador Acad�mico:</strong> Cristiano Duarte
								<br/>
								<strong>Contato:</strong> (85)98912.8795 | cristianoduarte@contato.com
							</p>

						</div>	<!-- col-lg-12 col-md-12 -->				

					</div> <!-- row -->

				</div> <!--- container-fluid -->			

			</section>

		</div> <!--- conteudo-principal -->

	</div> <!-- container -->
	
</body>
</html>