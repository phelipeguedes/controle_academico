<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>

	<%-- JSP responsável pelo login. Recebe requisições do 'login.jsp' e repassa, pela session, p/ servletlogin  --%>

	<%-- Instancia a classe Colaborador. O valor 'colaborador', no id, serve p/ recuperar seus atributos --%>
	<jsp:useBean id="cs" class="br.com.fca.models.CoordenadorSistemas" scope="session"></jsp:useBean>
	
	<%-- Propriedades do bean (Colaborador) que serão utilizadas. '*' Representa todas as propriedades --%>
	<jsp:setProperty property="*" name="cs"/>
	
	<%-- redirecionando p/ a LoginCoordenadorServlet --%>
	<jsp:forward page="login_coordenador_servlet"></jsp:forward>	
	
</body>
</html>