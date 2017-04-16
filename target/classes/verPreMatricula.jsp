<%@page import="br.com.fca.dao.PreMatriculaDao"%>
<%@page import="br.com.fca.models.PreMatricula"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		PreMatricula preMatriculaSelecionada = new PreMatricula();
		
	    preMatriculaSelecionada = PreMatriculaDao.encontrarPeloId(Integer.parseInt(request.getParameter("idPreMatricula")));
	    
	%>
	
	<table>
		<tr>
			<td><%= preMatriculaSelecionada.getIdPreMatricula() %></td>
		</tr>
	</table>
	
	
	
</body>
</html>