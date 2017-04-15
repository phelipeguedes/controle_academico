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
		<nav class="navbar navbar-inverse top=bar expanded data-topbar role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">FCA</a>					
				</div>
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">ALUNOS MATRICULADOS</span></a></li>
				</ul>			
				<div class="top-bar-section">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">SISTEMAS DE INFORMAÇÃO</a></li>
					</ul>
				</div>	
			</div>
		</nav>		
	</header>
	
	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Matrícula</th>
					<th>Nome do Aluno(a)</th>
					<th>Curso</th>
					<th>Semestre</th>
					<th>Ação</th>
				</tr>
			</thead>
			
			<%-- <c:forEach var="aluno" items='${sessionScope["alunos"] }'> --%>
			
			<c:forEach var="aluno" items="${dao.listaAlunosSistemas}">	
				<tbody>

					<tr>
						<td>${aluno.matricula}</td>
						<td>${aluno.nome}</td>
						<td>${aluno.curso.nome}</td>
						<td>${aluno.semestre}</td>
						<td><a href="painelNotasAluno.jsp?matricula=${aluno.matricula}">ver</a><a href=""> editar</a> <a href="">atualizar</a>
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