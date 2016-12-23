<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forward Professor</title>
</head>
<body>
	
	<jsp:useBean id="professor" class="br.com.fca.professores.ProfessorSistemas" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="*" name="professor"/>
	
	<jsp:forward page="login_colaborador"></jsp:forward>
	
</body>
</html>