<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Aluno(a) EAD</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/aluno-online.css">
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
							<h5>Aluno(a) EAD</h5>	
						</div>				
					</div>
				</div>
			</div>
		</div> <!-- conteÃºdo topbar -->

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
					
					<li><a href="dadosDoAlunoEad.jsp">PERFIL</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ARQUIVOS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">POR DISCIPLINA</a></li>
							<li><a href="#">POR PROFESSOR</a></li>														
						</ul>
					</li>
					
					<li><a href="#">ATIVIDADES</a></li>	
					
					<li><a href="#">MENSAGENS</a></li>
					
					<li><a href="#">FÓRUM</a></li>
					
					<li><a href="home.jsp">SAIR</a></li>		
				</ul>
			</div>	
		</div> <!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>
			
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<h4 id="nome">Olá, ${alunoLogado.nome}!</h4>
							<h4>Bem vindo(a) ao Sistema EAD da FCA</h4>
						</div>
					</div>
				</div>	
			
			</section>

		</div> <!-- conteudo-principal -->

	</div> <!-- container -->

</body>
</html>