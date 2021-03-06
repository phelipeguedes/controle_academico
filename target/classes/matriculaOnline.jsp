<%@ page contentType="text/html; charset=ISO-8859-1" language="java" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8"/>
	<title>Pré-Matrícula Online</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/matricula-online.css">
</head>
<body>
	
	<header>
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="home.jsp" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACADÊMICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">MATRÍCULA ONLINE</a></li>
				</ul>			
			</div>	
		</nav>
	</header>
	
	<div class="container" id="conteudo">

		<img class="img img-responsive" src="img/estudantes-laptops-menor.jpg" alt="estudantes">
		<section>
			<div class="row"> <!-- row: os elementos contidos nesta classe ficarÃ£o na mesma linha -->
				<div class="col-lg-12 col-md-12">
					<h2>CONHEÇA NOSSOS CURSOS</h2>
					<p>Comece a moldar um futuro de sucesso.</p>
				</div>
				<hr>
			</div>

			<div class="row">
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>ADMINISTRAÇÃO</h5></div>
						<div class="panel-body">
							<p>Seja um profissional apto a liderar empresas de qualquer porte. Saiba atuar na gestão pública ou seja bem-sucedido no próprio negócio.</p>

							<p>Ensinamos a diagnosticar o problema a fim de obter o melhor resultado.</p>
							<br/>
							<a href="preMatriculaAdministracao.jsp"><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>

				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>CIÊNCIAS CONTÁBEIS</h5></div>
						<div class="panel-body">
							<p>Forma profissinais prontos para lidar com ações administrativas nas empresas, em busca de identificar, preparar e realizar informações de medidas financeiras ou operacionais.</p>
							
							<p>Disciplinas ministradas com a utilização de softwares.</p>
							<a href="preMatriculaContabeis.jsp""><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>
				
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>REDES DE COMPUTADORES</h5></div>
						<div class="panel-body">
							<p>Aprenda a utilizar equipamentos multiusuários, configurar acesso e disponibilidade para intranet e internet, provedores e roteadores.</p>

							<p>
								Ademais, trabalhe com gerenciamento de redes, sistemas operacionais e computação em nuvem.
							</p>							
							<a href="preMatriculaRedes.jsp""><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div>    				
				
				<div class="col-md-3 col-lg-3">
					<div class="panel panel-default">
						<div class="panel-heading panel-title"><h5>SISTEMAS DE INFORMAÇÃO</h5></div>
						<div class="panel-body">
							<p>Capacita o estudante a desenvolver soluções computacionais para problemas existentes no mundo real.</p>

							<p>Dando-lhe aptidões para projetar, implantar, desenvolver e gerir sistemas de alta qualidade. </p>
							<br/>
							<a href="preMatriculaSistemas.jsp"><button class="btn btn-primary" type="button">INSCREVA-SE</button></a>
						</div>
					</div>
				</div> <!-- col-md-3 col-lg-3 -->				
			</div> <!-- row -->
		</section>			
	</div> <!-- Container -->
	
	<!--  RodapÃ©-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acadêmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>
