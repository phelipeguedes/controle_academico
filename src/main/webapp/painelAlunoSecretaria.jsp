<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/aluno-online.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<title>Painel do Aluno</title>
<style>

body{
	//overflow-y: hidden;
}

.formulario {
	margin: 180px auto;
}

h4{
	display: block;
	margin: -100px 200px;
}

.table {
	margin: 10px 150px;
	width: 80%;
}

button {
	margin-left: 500px;
}

th, tr {
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
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="navBar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="home.jsp">Faculdade FCA</a></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">ACADÊMICO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HISTÓRICO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL
									DO ALUNO</a></li>
							<li><a href="#">NOTAS</a></li>
							<li><a href="painelDoAluno.jsp">PAINEL</a></li>
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

				<div class="container">
					<div class="formulario">
						<form class="form-horizontal" action="aluno" method="get">
							<div class="form-group">
								<label class="label-control col-sm-4 col-md-5" for="matricula">Matrícula</label>
								<div class="col-sm-6 col-md-5">
									<input class="form-control" type="text" name="matricula"
										id="matricula" placeholder="Insira a matrícula do aluno(a)"
										required /><br />
								</div>
							</div>

							<div class="form-group">
								<div class="row">
									<div class="col-md-5">
										<button type="submit" class="btn btn-primary btn-block"
											id="btn-matricula">Pesquisar</button>
									</div>
								</div>
							</div>
						</form>

					</div>
				</div>

			</section>

			<div class="container">
				<h4>Dados do Aluno</h4>
			</div>
				
			<div class="container">

				<jsp:useBean id="dao" class="br.com.fca.dao.AlunoDao"></jsp:useBean>
				
				<div class="table">
					
					<table class="table vertical-table table-hover table-responsive">
						
						<c:forEach var="aluno" items="dao.listaSistemas">
							<tr>
								<th scope="row">Nome</th>
								<td>${alunoPesquisado.nome}</td>
							</tr>							
							<tr>
								<th scope="row">Matrícula</th>
								<td>${alunoPesquisado.matricula}</td>
							</tr>							
							<tr>
								<th scope="row">Sexo</th>
								<td>${alunoPesquisado.sexo}</td>
							</tr>
							<tr>
								<th scope="row">Telefone</th>
								<td>${alunoPesquisado.telefone}</td>
							</tr>							
							<tr>
								<th scope="row">Email</th>
								<td>${alunoPesquisado.email}</td>
							</tr>
							<tr>
								<th scope="row">Curso</th>
								<td>${alunoPesquisado.curso.nome}</td>
							</tr>
							<tr>
								<th scope="row">Semestre</th>
								<td>${alunoPesquisado.semestre}</td>
							</tr>
							<tr>
								<th scope="row">Turno</th>
								<td>${alunoPesquisado.turno}</td>
							</tr>
							<tr>
								<th scope="row">Financiamento</th>
								<td>${alunoPesquisado.financiamento}</td>
							</tr>
						</c:forEach>

					</table>
				</div>
			</div>
		</div>
	</div>









</body>
</html>