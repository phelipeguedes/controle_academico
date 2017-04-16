<%@page import="br.com.fca.dao.PreMatriculaDao"%>
<%@page import="br.com.fca.models.PreMatricula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Ver Pré-Matrícula</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/alunos-matriculados.css"/>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	
	<style>
		.panel-heading span{
			margin-left: 50px;
		}
	</style>
</head>
<body>
	
	<header>
		<nav class="nav navbar-inverse" data-topbar role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">FACULDADE CONTROLE ACADÊMICO</a>
				</div>
				<%--<ul class="nav navbar-nav">
					<li><a href="#"><span id="nome_faculdade">PRÉ-MATRÍCULA</span></a></li>
				</ul>--%>			
					
				<div class="top-bar-section">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#">PRÉ-MATRÍCULA</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
	<% 
		PreMatricula preMatriculaSelecionada = new PreMatricula();
		
	    preMatriculaSelecionada = PreMatriculaDao.encontrarPeloId(Integer.parseInt(request.getParameter("idPreMatricula")));
	    
	%>	
	
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel panel-heading"><span>INFORMAÇÕES DO ALUNO(A)</span></div>
			<table class="table vertical-table table-hover table-stripped table-bordered">
				<tr>
					<th>#</th>
					<td><%= preMatriculaSelecionada.getIdPreMatricula() %></td>
				</tr>
				<tr>
					<th>Nome Completo</th>
					<td><%= preMatriculaSelecionada.getNomeAluno() %></td>
				</tr>
				<tr>
					<th>Sexo</th>
					<td><%= preMatriculaSelecionada.getSexo() %></td>
				</tr>
				<tr>
					<th>Curso</th>
					<td><%= preMatriculaSelecionada.getCurso().getNome() %></td>
				</tr>
				<tr>
					<th>Turno</th>
					<td><%= preMatriculaSelecionada.getTurno() %></td>
				</tr>
				<tr>
					<th>Cidade</th>
					<td><%= preMatriculaSelecionada.getCidade() %></td>
				</tr>
				<tr>
					<th>Endereço</th>
					<td><%= preMatriculaSelecionada.getLogradouro() %></td>
				</tr>
				<tr>
					<th>Cep</th>
					<td><%= preMatriculaSelecionada.getCep() %></td>
				</tr>
				<tr>
					<th>Telefone</th>
					<td><%= preMatriculaSelecionada.getTelefone() %></td>
				</tr>
				<tr>
					<th>Email</th>
					<td><%= preMatriculaSelecionada.getEmail() %></td>
				</tr>				
			</table>
		</div>
	</div>
	
	
	
	
</body>
</html>