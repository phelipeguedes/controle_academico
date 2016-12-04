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
		<nav class="nav navbar-inverse " data-topbar role="navigation">
			<ul class="title-area large-3 medium-4 columns">
				<li class="name">
					<li><a href="" class="navbar-brand">FCA - Docentes</a></li>
				</li>
			</ul> 
			<div class="top-bar-section">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Professores de Sistemas</a></li>
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
					<th>Turno</th>					
					<th>Ação</th>	
				</tr>				
			</thead>
			
			<c:forEach var="professor" items='${sessionScope["professores"]}'>
			
			<tbody>
				<tr>
					<td>${professor.id }</td>
					<td>${professor.nome}</td>
					<td>${professor.titulo}</td>
					<td>${professor.curso.nome}</td>
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
	
</body>
</html>