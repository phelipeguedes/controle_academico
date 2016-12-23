<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/painel_secretaria.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<style>
		.modal-header, h4, .close{
			background: #000;
			text:align-center;
			font-size: 30px; 
		}
		.modal-content {
			width: 300px;
		}
		.modal-footer {
			background: #f9f9f9;
		}
	</style>
</head>
<body>
	
	<div class="container">
		
		<button type="button" class="btn btndefault" id="botao">Login</button>
		
		<div class="modal fade" id="modal" role="dialog">
			<div class="modal-dialog">
				
				<div class="modal-content">
					<div class="modal-header" style="padding:10px 30px;">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4><span class="glyphicon glyphicon-user"></span>Login</h4>
					</div>
					
					<div class="modal-body" style="padding:20px 30px;">
						<form action="forwardCoordenador.jsp" method="post" class="" role="form">
							<div class="form-group">
								<label for="usuario">Usuário</label>
								<input type="text" class="form-control" name="usuario" id="usuario" placeholder="Entre com o seu nome de usuário">
							</div>
							<div class="form-group">
								<label for="senha">Senha</label>
								<input type="password" class="form-control" name="senha" id="senha" placeholder="Digite a sua senha">
							</div>
							<button type="submit" class="btn btn-default btn-block" data-dismiss="modal">Entrar</button>
						</form>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
	
	<script>
		$(document).ready(function(){
			$("#botao").click(function(){
				$("#modal").modal();
			});
		});
	</script>

</body>
</html>