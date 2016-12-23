<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Painel Professor</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/painel_professor.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
	<div id="container">
		<div class="conteudo_topbar">
			<div class="container-fluid">
				<div class="topbar">
					<div class="topbar-inner">
						<div class="container">
							<h3>Controle Acad�mico</h3>
							<h5>Professor</h5>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- conteúdo topbar -->

		<div id="conteudo-barra_lateral">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="#navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="#">Faculdade FCA</a></li>
					<li class=""><a href="#">ARQUIVOS</a></li>
					<li class=""><a href="#">LAN�AR NOTAS</a></li>
					<li class=""><a href="#">LAN�AR FREQU�NCIAS</a></li>					
				</ul>
			</div>
		</div>		

		<div id="conteudo_principal">
			<section>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<h2>Ol�, professor(a) ${professorLogado}!</h2>
							<p>Seja bem-vindo(a)!</p>
							<p>Nesta sess�o voc� tem acesso privilegiado a notas, frequ�ncias e demais atividades dos alunos.</p>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>
	
</body>
</html>