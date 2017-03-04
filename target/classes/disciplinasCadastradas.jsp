<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Disciplinas Cadastradas</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/disciplinas-cadastradas.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	
	<jsp:useBean id="dao" class="br.com.fca.dao.DisciplinaDao"></jsp:useBean>
	
	<header>		
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">DISCIPLINAS</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">SISTEMAS DE INFORMAÇÃO</a></li>
				</ul>			
			</div>	
		</nav>					
	</header>

	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>	
					<th>Código</th>				
					<th>Disciplina</th>
					<th>Sigla</th>
					<th>Professor</th>
					<th>Curso</th>
					<th>Semestre</th>						
					<th>Ações</th>	
				</tr>				
			</thead>
			
			<%-- <c:forEach var="disciplina" items='${sessionScope["disciplinas"] }'> --%>
			
			<c:forEach var="disciplina" items="${dao.lista}">
			
			<tbody>
				<tr>
					<td>${disciplina.id}</td>					
					<td>${disciplina.nome}</td>
					<td>${disciplina.sigla}</td>					
					<td>${disciplina.professor.nome}</td>					
					<td>${disciplina.curso.nome}</td>
					<td>${disciplina.semestre}</td>
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
		<a href="cadastrarDisciplina.jsp"><button class="btn btn-default">Retornar</button></a>
	</div>
	
</body>
</html>