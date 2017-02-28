<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<title>Pré-Matriculas Ciências Contabeis</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/alunos-matriculados.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	
	<style>
		th, tr {
			text-align: center;
		}
	</style>
</head>
<body>
	
	<jsp:useBean id="dao" class="br.com.fca.dao.PreMatriculaDao"></jsp:useBean>
	
	<header>
		<nav class="nav navbar-inverse " data-topbar role="navigation">
			<ul class="title-area large-3 medium-4 columns">
				<li class="name">
				<li><a href="" class="navbar-brand">Pré-Matrículas Redes de Computadores</a></li>
			</ul>
			<div class="top-bar-section">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#">Faculdade FCA</a></li>
				</ul>
			</div>
		</nav>
	</header>
	
	<div class="container clearfix">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Id Pré Matrícula</th>
					<th>Nome do Aluno</th>
					<th>Sexo</th>
					<th>Curso</th>					
					<th>Turno</th>	
					<th>Telefone</th>
					<th>Email</th>									
					<th>Ação</th>	
				</tr>				
			</thead>
			
			<%-- <c:forEach var="pma" items='${sessionScope["preMatriculasAdministracao"]}'> --%>
			<c:forEach var="pmr" items="${dao.listarPreMatriculasRedes}">
			
			<tbody>
				<tr>
					<td>${pmr.idPreMatricula }</td>
					<td>${pmr.nomeAluno}</td>
					<td>${pmr.sexo}</td>
					<td>${pmr.curso.nome}</td>
					<td>${pmr.turno}</td>
					<td>${pmr.telefone}</td>
					<td>${pmr.email}</td>
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