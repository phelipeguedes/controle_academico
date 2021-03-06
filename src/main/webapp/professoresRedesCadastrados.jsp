<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Professores Cadastrados</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/professores-cadastrados.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	
	<header>
		
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACAD�MICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">PROFESSORES DE SISTEMAS</a></li>
				</ul>			
			</div>	
		</nav>			
	</header>

	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nome</th>
					<th>T�tulo</th>
					<th>Curso</th>	
					<!-- <th>Disciplina</th>-->				
					<th>Turno</th>					
					<th>A��o</th>	
				</tr>				
			</thead>
			
			<%-- <c:forEach var="professor" items='${sessionScope["professores"]}'> --%>
			
			<c:forEach var="professor" items="${dao.listaProfessoresRedes}">
			
			<tbody>
				<tr>
					<td>${professor.id }</td>
					<td>${professor.nome}</td>
					<td>${professor.titulo}</td>
					<td>${professor.curso.nome}</td>
					<%--<td>${professor.disciplina.nome}</td>--%>
					<td>${professor.turno}</td>
					<td>
						<a href="">ver</a>
						<a href="">editar</a>
						<a href="">atualizar</a>
						<a href="">excluir</a>
					</td>
				</tr>
			</tbody>
			
			</c:forEach>
			
		</table>
	</div>
	
	<div class="container-fluid">
		<a href="cadastrarProfessor.jsp"><button class="btn btn-default">Retornar</button></a>
	</div>
	
</body>
</html>