<!DOCTYPE html>
<%@page import="br.com.fca.models.Aluno"%>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Login - Controle Acad�mico</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/login.css">	
</head>

<body>		
	
	<div class="container">
		<form class="form-login" action="forward.jsp" method="post">
			<h4 class="form-signin-heading">Fa�a o login</h4>
			<label for="email" class="sr-only">Email:</label>
			<input type="email" class="form-control" name="email" id="email" placeholder="Usu�rio ou email" required /><br/>
			<label for="senha" class="sr-only">Senha:</label>
			<input type="password" class="form-control" name="senha" id="senha" placeholder="Digite a sua senha" required /><br/>

			<button type="submit" class="btn btn-default">Acessar</button>
			<br/><br/>		
			<a href="#">Esqueci login/senha</a>
		</form>		
	</div>

	<!-- Rodap� -->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">FACULDADE CONTROLE ACAD�MICO</p>
		</div>		
	</footer>
	
</body>
</html>
