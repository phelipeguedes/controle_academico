<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="secretaria" class="br.com.fca.models.Secretaria" scope="session"></jsp:useBean>
	
	<jsp:setProperty property="*" name="secretaria"/>
	
	<jsp:forward page="login_secretaria"></jsp:forward>
	
</body>
</html>