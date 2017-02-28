<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Painel Professor</title>
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
							<h5>Professor(a)</h5>	
						</div>				
					</div>
				</div>
			</div>
		</div> <!-- conteÃºdo topbar -->

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
							<li><a href="#">LANÇAR FREQUENCIA</a></li>
							<li><a href="matricularAluno.jsp" target="_blank">LANÇAR NOTAS</a></li>														
							<li><a href="alunosMatriculadosSistemas.jsp" target="blank">LISTA DE ALUNOS</a></li>							
							<li><a href="painelAlunoSecretaria.jsp" target="_blank">PAINEL</a></li>
						</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">MATERIAIS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="disciplinasSistemasCadastradas.jsp" target="_blank">SUBIR ARQUIVO</a></li>
						</ul>
					</li>					
					
					<li><a href="home.jsp">SAIR</a></li>				
				</ul>
			</div>	
		</div> <!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>
				<div class="container-fluid">
					
					<div class="row"> <!-- row: mantÃ©m os elementos na mesma linha -->
						<div class="col-lg-12 col-md-12">
							<h4>Olá, professor(a) ${professorLogado}!</h4>			

							<p>
								Seja bem-vindo(a)!

								Nesta sessão você tem acesso privilegiado a notas, frequências e demais atividades dos alunos.
							</p>							
							
						</div>	<!-- col-lg-12 col-md-12 -->				

					</div> <!-- row -->

				</div> <!--- container-fluid -->			

			</section>
					
					
				</div> <!-- container-fluid -->
			</section>

		</div> <!-- conteudo-principal -->

	</div> <!-- container -->

</body>
</html>