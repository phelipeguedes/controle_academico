<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8" />
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

	<%-- Login Professor --%>

	<div class="container">

		<div class="modal fade" id="modalProfessor" role="dialog">
			<div class="modal-dialog">

				<div class="modal-content">
					<div class="modal-header" style="padding: 10px 30px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 id="login">Restrito ao Professor</h4>
					</div>

					<div class="modal-body" style="padding: 20px 30px;">
						<form action="forwardProfessor.jsp" method="post">
							<div class="form-group">
								<label for="usuario">Usuário</label> <input type="text"
									class="form-control" name="nomeDeUsuario" id="usuario"
									placeholder="Entre com o seu nome de usuário">
							</div>
							<div class="form-group">
								<label for="senha">Senha</label> <input type="password"
									class="form-control" name="senha" id="senha"
									placeholder="Digite a sua senha">
							</div>
							<button type="submit" class="btn btn-default btn-block"
								data-dismiss="modal">Entrar</button>
						</form>
					</div>
				</div>

			</div>

		</div>
	</div>
	
	<button type="button" id="login_professor">Logar como professor</button>

	<script>
		$(document).ready(function() {
			$("#login_coordenador").click(function() {
				$("#modal").modal();
			});
		});

		$(document).ready(function() {
			$("#login_professor").click(function() {
				$("#modalProfessor").modal();
			});
		});
	</script>

</body>
</html>