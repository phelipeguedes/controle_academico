<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%-- JSP responsável pelo login. Recebe requisições do 'login.jsp' e repassa, pela session, p/ servletlogin  --%>	

	<jsp:useBean id="aluno" class="br.com.fca.aluno.AlunoSistemas" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="*" name="aluno"/>
	
	<jsp:forward page="login_aluno"></jsp:forward>
	
</body>
</html>