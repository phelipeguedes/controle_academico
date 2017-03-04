<!DOCTYPE html>
<%@page import="br.com.fca.models.Aluno"%>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Login - Controle Acadêmico</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/loginCoordenador.css">	
</head>

<body>		
	
	<%-- Mensagem de erro quando há falha na tentativa de login --%>
	
	<% if(request.getMethod().equalsIgnoreCase("POST") && request.getAttribute("coordenadorLogado") == null){ %>
			
			<p style="color:red; text-align:center">Nome de usuário(a)/senha incorretos</p>		
	
	<% } %>	
	
	<div class="container">
		<form action="loginCoordenador" class="form-login" method="post">
			<h4 class="form-signin-heading">Faça o login</h4>
			<label for="login" class="sr-only">Email:</label>
			<input type="email" class="form-control" name="login" id="login" placeholder="Usuário ou email" required /><br/>
			<label for="senha" class="sr-only">Senha:</label>
			<input type="password" class="form-control" name="senha" id="senha" placeholder="Digite a sua senha" required /><br/>

			<button type="submit" class="btn btn-default">Acessar</button>
			<br/><br/>		
			<a href="#">Esqueci login/senha</a>
		</form>		
	</div>

	<!-- Rodapé -->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">FACULDADE CONTROLE ACADÊMICO</p>
		</div>		
	</footer>
	
</body>
</html>
