<%@page import="br.com.fca.dao.AlunoDao"%>
<%@page import="br.com.fca.models.Aluno"%>
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
	<link rel="stylesheet" type="text/css" href="css/painelNotasAlunos.css">
</head>
<body>

	<jsp:useBean id="dao" class="br.com.fca.dao.AlunoDao" />

	<jsp:useBean id="aluno" class="br.com.fca.models.Aluno" />

	<header>
		<!-- Barra do topo -->
		<nav class="top-bar expanded" brand="Faculdade" fixed="top">
			<div class="container-fluid">
				
				
			</div>
		</nav>
	</header>

	<div id="conteudo-barra_lateral">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#navBar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navBar">
			<ul class="sidebar-nav">
				<li class="sidebar-brand"><a href="home.jsp">Faculdade FCA</a></li>
				<li class="heading">Ações</li>	
				<li><a href="#">Excluir Aluno(a)</a></li>
				<li><a href="#">Editar Aluno(a)</a></li>
				<li><a href="alunosMatriculadosSistemas.jsp">Listar Alunos</a></li>				
			</ul>
		</div>
	</div>
	<!-- conteudo_barra-lateral -->

	<%
		AlunoDao alunoDao = new AlunoDao();
		Aluno alunoSelecionado = alunoDao.getMatricula(Integer.parseInt(request.getParameter("matricula")));
	%>

	<div id="conteudo_principal">
		<div class="container-fluid">
			<table class="table vertical-table table-hover">
				
					<tr>
						<th scope="row">Matrícula</th>
						<td><%=alunoSelecionado.getMatricula()%></td>
					</tr>
					<tr>
						<th scope="row">Nome</th>
						<td><%=alunoSelecionado.getNome()%></td>
					</tr>
					<tr>
						<th scope="row">Curso</th>
						<td><%=alunoSelecionado.getCurso().getNome()%></td>
					</tr>
					<tr>
						<th scope="row">Semestre</th>
						<td><%=alunoSelecionado.getSemestre()%></td>
					</tr>
					<tr>
						<th scope="row">Turno</th>
						<td><%=alunoSelecionado.getTurno()%></td>
					</tr>
					
			</table>
		</div>
	</div>	
</body>
</html>