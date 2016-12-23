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
							<li><a href="posicaoFinanceira.jsp">CONSULTA FINANCEIRA</a></li>
						</ul></li>

					<li><a href="#">MENSAGENS</a></li>

					<li><a href="#">FÓRUM</a></li>
					
					<li><a href="home.jsp">SAIR</a></li>
				</ul>
			</div>
		</div>
		<!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>

				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="table-responsive">
								<h4>Dados do Aluno</h4>
								-----
								<p>${aluno.matricula} / ${aluno.nome} - ${aluno.curso.nome}</p>
								<table class="table table-hover table-condensed">
									<thead>
										<tr>											
											<th>Logradouro</th>
											<th>Bairro</th>
											<th>Cidade</th>											
											<th>Telefone</th>
											<th>Email</th>
											<th>Curso</th>
											<th>Turno</th>
											<th>Financiamento</th>																					
										</tr>
									</thead>
									
									<%--<c:forEach var="aluno" items="dao.listaSistemas">--%>
									
									<tbody>
										<tr>
											<td>${aluno.endereco}</td>
											<td>${aluno.bairro}</td>
											<td>${aluno.cidade}</td>											
											<td>${aluno.telefone}</td>
											<td>${aluno.email}</td>										
											<td>${aluno.curso.nome}</td>
											<td>${aluno.turno}</td>
											<td>${aluno.financiamento}</td>											
										</tr>
									</tbody>
									
								</table>
							</div>	
						</div>
					</div>
				</div>

			</section>

		</div>
		<!-- conteudo-principal -->

	</div>
	<!-- container -->





</body>
</html>