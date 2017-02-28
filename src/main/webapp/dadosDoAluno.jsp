<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/aluno-online.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>FCA - Dados Cadastrais</title>
<style>
	tr, th {
		text-align: center;
	}
</style>
</head>
<body>

	<div id="container">
		<div class="conteudo_topbar">
			<div class="container-fluid">
				<div class="topbar">
					<div class="topbar-inner">
						<div class="container">
							<h3>Controle Acadêmico</h3>
							<h5>Portal do Aluno(a)</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- conteudo topbar -->

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
					<li class="sidebar-brand"><a href="home.jsp">Faculdade	FCA</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">ACADÊMICO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HISTÓRICO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL
									DO ALUNO</a></li>
							<li><a href="painelNotasAluno.jsp">NOTAS</a></li>
							<li><a href="dadosDoAluno.jsp">DADOS CADASTRAIS</a></li>
							<li><a href="#">SITUAÇÃO ACADÊMICA</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">TESOURARIA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">2ª VIA BOLETO</a></li>
							<li><a href="consultaFinanceira.jsp">CONSULTA FINANCEIRA</a></li>
						</ul></li>

					<li><a href="#">MENSAGENS</a></li>

					<li><a href="#">FÓRUM</a></li>
					
					<li><a href="home.jsp">SAIR</a></li>
				</ul>
			</div>
		</div>	<!-- #conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>

				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="table-responsive">
								<h4>Dados do Aluno</h4>
								----------------------------------------------------------------------------------------------
								<p>${alunoLogado.matricula} / ${alunoLogado.nome} - ${alunoLogado.curso.nome}</p>
								<table class="table vertical-table table-hover table-condensed">
									
										<tr>
											<th scope="row">Cidade</th>
											<td>${alunoLogado.cidade}</td>
										</tr>
										<tr>											
											<th scope="row">Logradouro</th>
											<td>${alunoLogado.endereco}</td>
										</tr>	
										<tr>
											<th scope="row">Bairro</th>
											<td>${alunoLogado.bairro}</td>
										</tr>										
										<tr>
											<th scope="row">Telefone</th>
											<td>${alunoLogado.telefone}</td>
										</tr>	
										<tr>
											<th scope="row">Email</th>
											<td>${alunoLogado.email}</td>
										</tr>																						
										<tr>
											<th scope="row">Turno</th>
											<td>${alunoLogado.turno}</td>
										</tr>	
										<tr>
											<th scope="row">Financiamento</th>
											<td>${alunoLogado.financiamento}</td>
										</tr>									
									
								</table>
							</div> <!-- .table-responsive -->	
						</div> <!-- .col-lg-12 xol-md-12 -->
					</div> <!-- .row -->
				</div> <!-- .container-fluid -->

			</section>

		</div>	<!-- #conteudo-principal -->

	</div>	<!-- #container -->

</body>
</html>