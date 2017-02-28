<%@page import="java.util.List"%>
<%@page import="br.com.fca.preMatricula.PreMatriculaSistemas"%>
<%@page import="br.com.fca.dao.PreMatriculaSistemasDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Pré-Matrículas Sistemas de Informação</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/alunos-matriculados.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:useBean id="dao" class="br.com.fca.dao.PreMatriculaDao"></jsp:useBean>
	
	<header>
		<nav class="nav navbar-inverse " data-topbar role="navigation">
			<ul class="title-area large-3 medium-4 columns">
				<li class="name">
				<li><a href="" class="navbar-brand">Pré Matrículas Sistemas de Informação</a></li>
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
					<th>Ação</th>	
				</tr>				
			</thead>
			
			<c:forEach var="pm" items='${dao.listarPreMatriculasSistemas}'>
			
			<tbody>
				<tr>
					<td>${pm.idPreMatricula }</td>
					<td>${pm.nomeAluno}</td>
					<td>${pm.sexo}</td>
					<td>${pm.curso.nome}</td>
					<td>${pm.turno}</td>
					<% //PreMatriculaSistemas pm = new PreMatriculaSistemas(); %>
					<td>
						<%--<a href="preMatriculasSistemasRealizadas.jsp?id=" ${pm.idPreMatricula}">ver</a>--%>
						<a href="preMatriculasSistemasRealizadas.jsp?id=" <% //pm.getIdPreMatricula() %> ">ver</a>
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