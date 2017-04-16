<%@page import="br.com.fca.dao.ProfessorDao"%>
<%@page import="br.com.fca.models.Professor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Informações do Professor(a)</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/alunos-matriculados.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	
	<header>
		<nav class="nav navbar-inverse " data-topbar role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">FCA</a>
				</div>
				<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">PROFESSOR(A)</span></a></li>
				</ul>			
			
				<div class="top-bar-section">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">SISTEMAS DE INFORMAÇÃO</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	<% 
		ProfessorDao profDao = new ProfessorDao();		
		Professor professor = profDao.encontrarPeloId(Integer.parseInt(request.getParameter("id")));
	%>
	
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">&nbsp;&nbsp;Informações do Professor(a)</div>
				<table class="table vertical-table table-hover table-bordered table-stripped">
				<tr>
					<th scope="row">#</th>
					<td><%= professor.getId() %></td>
				</tr>
				<tr>	
					<th scope="row">Nome</th>
					<td><%= professor.getNome() %></td>
				</tr>
				<tr>
					<th scope="row">Sexo</th>
					<td><%= professor.getSexo() %></td>
				</tr>
				<tr>	
					<th scope="row">Curso</th>
					<td><%= professor.getCurso().getNome() %></td>
				</tr>
				<tr>
					<th scope="row">Turno</th>
					<td><%= professor.getTurno() %></td>
				</tr>
				<tr>	
					<th scope="row">Título(s)</th>
					<td><%= professor.getTitulo() %></td>					
				</tr>	
				<tr>
					<th scope="row">Cidade</th>
					<td><%= professor.getCidade() %></td>
				</tr>
				<tr>
					<th scope="row">Bairro</th>
					<td><%= professor.getBairro() %></td>
				</tr>
				<tr>
					<th scope="row">Cep</th>
					<td><%= professor.getCep() %></td>
				</tr>
				<tr>
					<th scope="row">Telefone</th>
					<td><%= professor.getTelefone() %></td>
				</tr>
				<tr>
					<th scope="row">Email</th>
					<td><%= professor.getEmail() %></td>
				</tr>
			</table>
		</div>	
	</div>
</body>
</html>