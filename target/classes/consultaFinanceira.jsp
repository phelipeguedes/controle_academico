<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Tesouraria</title>
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/consultaFinanceira.css">
</head>
<body>
	<div class="container">
		<h4 style="color: red">Posição Financeira do(a) aluno(a) - ${alunoLogado.nome}</h4>
		
		<p>Nenhum débito financeiro foi encontrado.</p>
		
		<a href="alunoOnline.jsp"><button type="button" class="">Retornar</button></a>
	</div>
</body>
</html>