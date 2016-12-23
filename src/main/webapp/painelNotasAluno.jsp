<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cadastrar Notas</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/matricula-online.css">
</head>
<body>

	<jsp:useBean id="dao" class="br.com.fca.dao.AlunoSistemasDao" />
	
	<jsp:useBean id="aluno" class="br.com.fca.aluno.AlunoSistemas" />
	
	<header>
		<!-- Barra do topo -->
		<nav class="navbar navbar-inverse" brand="Faculdade" fixed="top">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="navbar-brand">FCA</a> 					
				</div>	
					
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">FACULDADE CONTROLE ACADÃŠMICO</span></a></li>
				</ul>				

				<ul class="nav navbar-nav navbar-right">					
					<li><a href="#">CADASTAR NOTAS</a></li>
				</ul>			
			</div>	
		</nav>
	</header>
	
	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Matrícula</th>
					<th>Nome</th>
					<th>Curso</th>
					<th>Turno</th>
					<th>Ação</th>
				</tr>
			</thead>
			
			<%-- <c:forEach var="aluno" items='${sessionScope["alunos"] }'> --%>
			
			<%-- <c:forEach var="aluno" items="${dao.matricula}"> --%>	
			
			
			
				<tbody>

					<tr>
						<td>${aluno.email}</td>
						<td>${aluno.nome}</td>
						<td>${aluno.curso.nome}</td>
						<td>${aluno.turno}</td>
					</tr>
				</tbody>
				
				
				
			<%-- </c:forEach> --%>	
		</table>
	</div>
	
</body>
</html>