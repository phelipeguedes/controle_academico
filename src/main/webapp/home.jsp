<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="br.com.fca.models.Secretaria"%>
<html lang="pt_br">

<head>
	<meta charset="UTF-8"/>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/home.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	
	<style>
		a#login_coordenador {
			font-size: 8px;
			color: red;
			text-align: center;
			margin-left: 22px;		
		}

		.modal-header, .close{
			background: #000;
			text-align: center;
			font-size: 30px; 
		}
		.modal-content {
			width: 400px;
		}
		.modal-footer {
			background: #f9f9f9;
		}
		h4#login {
			color: #fff;
			text-align: center;
		}
		
	</style>
		
</head>

<body>
	
	<!-- barra do menu -->
	<nav class="navbar navbar-inverse" brand="Faculdade" fixed="top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand"><img src="img/logo3.jpg"></a>
			</div>

			<div class="collapse navbar-collapse" id="navBar">
				<ul class="nav navbar-nav" id="nav">
					<li class="current"><a href="home.jsp">HOME</a></li>
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">ALUNO<span class="caret"></span></a>
						<ul class="dropdown-menu">							
							<li><a href="arquivos/calendario-academico.pdf" target="_blank">CALENDÁRIO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL DO ALUNO</a></li>
							<li><a href="matriculaOnline.jsp">MATRÍCULA</a></li>
							<li><a href="#">PROCESSO SELETIVO</a></li>
						</ul>
					</li>

					<li><a href="loginAluno.jsp" target="blank">CONTROLE ACADÊMICO</a></li>
					
					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">CURSOS<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">GRADUAÇÃO</a></li>
							<li><a href="#">EXTENSÃO</a></li>
						</ul>
					</li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">BIBLIOTECA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">CONSULTA AO ACERVO</a></li>	
							<li><a href="#">REGULAMENTO</a></li>	
						</ul>					
					</li>

					<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">INSTITUCIONAL<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HISTÓRIA</a></li>
						</ul>
					</li>					
					
					<li><a href="ead.jsp" target="blank">EAD</a></li>

					<li><a href="#">CONTATO</a></li>									
				</ul>

				<!-- botÃ£o de login -->
				<ul class="nav navbar navbar-right">
					
					<li class="dropdown" id="login">
						<a class="dropdown-toggle" data-toggle="dropdown" href="#">
							LOGIN
							<b class="caret"></b>
						</a>
						
						<div class="dropdown-menu">
							<label id="colaborador">RESTRITO AOS COLABORADORES</label>
							
							<div class="row">
								<a href="loginProfessor.jsp">professor</a> |
								<a href="loginCoordenador.jsp">coordenador</a>
							</div>
														
							<form action="forwardSecretaria.jsp" method="post" style="margin: 0px">
								
								<div style="margin:0; padding:0; display:inline">
									<input type="hidden" value="" />
								</div>
								
								<fieldset class="textbox" style="padding:10px">
									<input type="text" name="nomeDeUsuario" placeholder="usuario" style="margin-top: 8px" required/>
									<input type="password" name="senha" placeholder="senha" style="margin-top: 8px" required />
									<input type="submit" class="btn-primary" name="botao" value="Entrar" style="margin-top: 8px"/>
								</fieldset>
							</form>

						</div>
					</li>
				</ul>
				
				<%-- Login coordenador --%>
				
			</div>	<!-- collapse navbar-collapse -->	
		</div> 	<!-- container-fluid -->
	</nav>	
	
	<div class="container">
		<div id="carrossel">
			<div class="container">

				<!-- carrossel de slides -->
				<div class="banner carousel slide" id="meuCarrossel" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="meuCarrossel" data-slide-to="0" class="active"></li>
						<li data-target="meuCarrossel" data-slide-to="1" class="active"></li>
						<li data-target="meuCarrossel" data-slide-to="2" class="active"></li>
						<li data-target="meuCarrossel" data-slide-to="3" class="active"></li>
					</ol>

					<div class="slides carousel-inner">
						<div class="item active">
							<img src="img/estudantes-1-menor.jpg" class="foto_menor" alt="esudantes" />
							<div class="banner_caption">
								<div class="container">
									<div class="row">
										<div class="col-xs-12">
											<div class="caption_inner animated fadeInUp">

											</div> <!-- caption-inner -->
										</div>
									</div> <!-- row -->
								</div> <!-- container -->
							</div> <!-- banner_caption -->					
						</div> <!-- item-active -->

						<div class="item">
							<img src="img/estudantes-2-menor.jpg" class="foto_menor" alt="universitarios" />
							<div class="banner_caption">
								<div class="container">
									<div class="row">
										<div class="col-xs-12">
											<div class="caption_inner animated fadeInUp">

											</div>	<!-- caption-inner -->
										</div><!-- col-xs-12 -->								
									</div>	<!-- row -->
								</div>	<!-- cotainer -->
							</div><!-- banner-caption -->
						</div>	<!-- item-active -->					

						<div class="item">
							<img src="img/bg-slide1.jpg" alt="trabalho" />
							<div class="banner_caption">
								<div class="container">
									<div class="row">
										<div class="col-xs-12">
											<div class="caption-inner animated fadeInUp">

											</div> <!-- caption-inner -->
										</div><!-- col-xs-12 -->								
									</div><!-- row -->
								</div><!-- cotainer -->
							</div><!-- banner-caption -->
						</div><!-- item-active -->

						<div class="item">
							<img src="img/estudantes-3-menor.jpg" alt="estudantes"/>
							<div class="banner_caption">
								<div class="container">
									<div class="row">
										<div class="col-xs-12">
											<div class="caption-inner">

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div> <!-- slides carousel-inner -->

					<!-- Imagens das setas da direita e esquerda (slides) -->

					<a href="#meuCarrossel" class="left carousel-control" data-slide="prev">
						<span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>
					</a>

					<a href="#meuCarrossel" class="right carousel-control" data-slide="next">
						<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span>
					</a>

				</div> <!-- banner carousel slide -->
			</div><!-- container -->
		</div> <!-- #carrossel -->

		<br/>

		<!-- notÃ­cias --> 
		<div id="noticias">
			<div class="container-fluid">
				<div class="row">			

					<div class="col-lg-3 col-md-3" id="cor1">
						<h4>SEMANA DA COMPUTAÇÃO</h4>
						<p>
							XX Semana da computação.<br/>
							Cursos, seminários, palestras, visita de <br/> 
							profissionais e muito mais!
						</p>	
					</div>

					<div class="col-lg-3 col-md-3">
						<h4>CARREIRA E ESTÁGIO</h4>	
						<p>
							O Centro de estágio do Ceará estão com vagas
							abertas para diversas Áreas. <br/>
							<a href="#">Saiba Mais</a> 
						</p>
					</div>			

					<div class="col-lg-3 col-md-3" id="cor2">
						<h4>CURSOS DE EXTENSÃO</h4>
						<p>Confira a programação <a href="#">aqui</a></p>
					</div>

					<div class="col-lg-3 col-md-3">
						<h4>VESTIBULAR</h4>
						<p>Inscrições abertas. Prova 31/02/2050</p>
						<p>Estude na maior particular de Fortaleza</p>
					</div>

				</div><!-- .row -->
			</div> <!-- container fluid -->
		</div><!-- noticias -->
	</div><!-- container-fluid -->
	
	<!-- rodapÃ©-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acadêmico - All Rights Reserved</p>
		</div>
	</footer>
	
	<script>
		$(document).ready(function(){
			$("#login_coordenador").click(function(){
				$("#modal").modal();
			});
		});
		
		$(document).ready(function(){
			$("#login_professor").click(function(){
				$("#modalProfessor").modal();
			});
		});
	</script>
	
</body>
</html>