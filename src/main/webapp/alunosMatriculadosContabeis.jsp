<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Alunos Matriculados</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/alunos-matriculados.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	
	<jsp:useBean id="dao" class="br.com.fca.dao.AlunoDao" />
	
	<header>
		<nav class="nav navbar-inverse " data-topbar role="navigation">
			<ul class="title-area large-3 medium-4 columns">
				<li class="name">
				<li><a href="" class="navbar-brand">FCA - Alunos Matriculados</a></li>
			</ul>
			<div class="top-bar-section">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Ci�ncias Cont�beis</a></li>
				</ul>
			</div>
		</nav>
	</header>

	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Matr�cula</th>
					<th>Nome</th>
					<th>Curso</th>
					<th>Turno</th>
					<th>A��o</th>
				</tr>
			</thead>
			
			<%-- <c:forEach var="aluno" items='${sessionScope["alunos"] }'> --%>
			
			<c:forEach var="aluno" items="${dao.listaAlunosContabeis}">	
				<tbody>

					<tr>
						<td>${aluno.matricula}</td>
						<td>${aluno.nome}</td>
						<td>${aluno.curso.nome}</td>
						<td>${aluno.turno}</td>
						<td><a href="painelNotasAluno.jsp?action=getMatricula&&matricula=${aluno.matricula}">ver</a><a href=""> editar</a> <a href="">atualizar</a>
							<a href="removerAluno.jsp?action=removerAluno&&matricula=${aluno.matricula}" 
							onclick="return confirm('Tem Certeza que Deseja excluir os registros deste aluno?');">
							excluir</a>
						</td>
					</tr>
				</tbody>
			
			</c:forEach>	
		</table>
	</div>
	
	<div class="container-fluid">
		<a href="matricularAluno.jsp"><button class="btn btn-default">Retornar</button></a>
	</div>
	
</body>
</html>