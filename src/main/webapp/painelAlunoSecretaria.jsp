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
.formulario {
	margin: 180px auto;
}

.table-responsive {
	margin: 0px 140px;
	width: 95%;
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
							<h3>Controle Acad�mico</h3>
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
						data-toggle="dropdown">ACAD�MICO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HIST�RICO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL
									DO ALUNO</a></li>
							<li><a href="#">NOTAS</a></li>
							<li><a href="painelDoAluno.jsp">PAINEL</a></li>
							<li><a href="#">SITUA��O ACAD�MICA</a></li>
						</ul></li>

					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">TESOURARIA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">2� VIA BOLETO</a></li>
							<li><a href="posicaoFinanceira.jsp">CONSULTA FINANCEIRA</a></li>
						</ul></li>

					<li><a href="#">MENSAGENS</a></li>

					<li><a href="#">F�RUM</a></li>

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
								<label class="label-control col-sm-4 col-md-5" for="matricula">Matr�cula</label>
								<div class="col-sm-6 col-md-5">
									<input class="form-control" type="text" name="matricula"
										id="matricula" placeholder="Insira a matr�cula do aluno(a)" required /><br />
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

				<%-- <p class="text-center">Ol�, ${alunoPesquisado.nome}</p> --%>

				<jsp:useBean id="dao" class="br.com.fca.dao.AlunoDao"></jsp:useBean>

				<div class="table-responsive">
					<h4>Dados do Aluno</h4>
					<table class="table vertical-table table-hover table-condensed">
						<thead>
							<tr>
								<th>Matr�cula</th>
								<th>Nome</th>
								<th>Sexo</th>
								<th>Telefone</th>
								<th>Email</th>
								<th>Curso</th>
								<th>Semestre</th>
								<th>Turno</th>
								<th>Financiamento</th>								
							</tr>
						</thead>

						<c:forEach var="aluno" items="dao.listaSistemas">

							<tbody>
								<tr>
									<td>${alunoPesquisado.matricula}</td>
									<td>${alunoPesquisado.nome}</td>
									<td>${alunoPesquisado.sexo}</td>
									<td>${alunoPesquisado.telefone}</td>
									<td>${alunoPesquisado.email}</td>
									<td>${alunoPesquisado.curso.nome}</td>
									<td>${alunoPesquisado.semestre}</td>
									<td>${alunoPesquisado.turno}</td>									
									<td>${alunoPesquisado.financiamento}</td>
								</tr>
							</tbody>
						</c:forEach>
					</table>

				</div>

			</div>

		</div>
		<!-- conteudo-principal -->

	</div>
	<!-- container -->





</body>
</html>