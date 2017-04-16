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
	
	<jsp:useBean id="dao" class="br.com.fca.dao.ProfessorDao"></jsp:useBean>
	
	<header>
		
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACADÊMICO</span></a></li>
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
					<th>Título</th>
					<th>Curso</th>						
					<th>Ação</th>	
				</tr>				
			</thead>
			
			<%-- <c:forEach var="professor" items='${sessionScope["professores"]}'> --%>
			
			<c:forEach var="professor" items="${dao.listaProfessoresSistemas}">
			
			<tbody>
				<tr>
					<td>${professor.id }</td>
					<td>${professor.nome}</td>
					<td>${professor.titulo}</td>
					<td>${professor.curso.nome}</td>
					<td>
						<a href="verProfessor.jsp?id=${professor.id}">ver</a>
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