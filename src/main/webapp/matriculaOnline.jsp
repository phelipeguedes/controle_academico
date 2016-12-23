<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Pr�-Matr�cula Online</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/matricula-online.css">
</head>
<body>
	
	<header>
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" brand="Faculdade" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACAD�MICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">MATR͍CULA ONLINE</a></li>
				</ul>			
			</div>	
		</nav>
	</header>
	
	<div class="container" id="conteudo">

		<img class="img img-responsive" src="img/estudantes-laptops-menor.jpg" alt="estudantes">
		<section>
			<div class="row"> <!-- row: os elementos contidos nesta classe ficarão na mesma linha -->
				<div class="col-lg-12 col-md-12">
					<h2>CONHE�A NOSSOS CURSOS</h2>
					<p>Comece a moldar um futuro de sucesso.</p>
				</div>
				<hr>
			</div>

			<div class="row">
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>ADMINISTRA��O</h5></div>
						<div class="panel-body">
							<p>Seja um profissional apto a liderar empresas de qualquer porte, saber atuar na gest�o p�blica ou ser bem-sucedido no pr�prio neg�cio.</p>

							<p>Ensinamos a diagnosticar o problema a fim de obter o melhor resultado.</p>
							<br/>
							<a href="preMatriculaAdministracao.jsp"><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>CI�NCIAS CONT��BEIS</h5></div>
						<div class="panel-body">
							<p>Forma profissinais prontos para lidar com a��es administrativas nas empresas, em busca de identificar, preparar e realizar informa��es de medidas financeiras ou operacionais.</p>
							
							<p>Disciplinas ministradas com uso de softwares.</p>
							<a href="preMatriculaContabeis.jsp""><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>
				
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>REDES DE COMPUTADORES</h5></div>
						<div class="panel-body">
							<p>Aprenda a utilizar equipamentos multiusu�rios, configurar acesso e disponibilidade para intranet e internet, provedores e roteadores.</p>

							<p>
								Ademais, trabalhe com gerenciamento de redes, sistemas operacionais e computa��o em nuvem.
							</p>							
							<a href="preMatriculaRedes.jsp""><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>    				
				
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>SISTEMAS DE INFORMA��O</h5></div>
						<div class="panel-body">
							<p>O objetivo do curso � capacitar o estudante a desenvolver solu��es computacionais para problemas existentes no mundo real.</p>

							<p>Dando-lhe aptid�es para projetar, implantar, desenvolver e gerir sistemas de alta qualidade. </p>
							<br/>
							<a href="preMatriculaSistemas.jsp"><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div> <!-- col-md-3 col-lg-3 -->				
			</div> <!-- row -->
		</section>			
	</div> <!-- Container -->
	
	<!--  Rodapé-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acadêmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>
