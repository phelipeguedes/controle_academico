<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="pms" class="br.com.fca.pre_matricula.PreMatriculaSistemas"></jsp:useBean>
	
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
			
			<c:forEach var="pms" items='${sessionScope["preMatriculasSistemas"]}'>
			
			<tbody>
				<tr>
					<td>${pms.id }</td>
					<td>${pms.nome}</td>
					<td>${pms.sexo}</td>
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
	
	<div class="container-fluid">
		<a href="cadastrarProfessor.jsp"><button class="btn btn-default">Retornar</button></a>
	</div>
	
</body>
</html>