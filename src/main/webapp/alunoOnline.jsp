<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Portal do Aluno(a)</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/aluno-online.css">
	<script type="text/javascript" src="bootstrap/js/jquery.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>	
</head>

<body>	
	<div id="container">
		<div class="conteudo_topbar">
			<div class="container-fluid">
				<div class="topbar">
					<div class="topbar-inner">
						<div class="container">
							<h3>Controle Acadêmico</h3>
							<h5>Portal do Aluno(a)</h5>	
						</div>				
					</div>
				</div>
			</div>
		</div> <!-- conteúdo topbar -->

		<div id="conteudo-barra_lateral">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navBar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navBar">
				<ul class="sidebar-nav">
					<li class="sidebar-brand"><a href="home.jsp">Faculdade FCA</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">ACADÊMICO<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">HISTÓRICO</a></li>
							<li><a href="arquivos/manual-do-aluno.pdf" target="_blank">MANUAL DO ALUNO</a></li>		
							<li><a href="#">NOTAS</a></li>
							<li><a href="dadosDoAluno.jsp">DADOS CADASTRAIS</a></li>
							<li><a href="#">SITUAÇÃO ACADÊMICA</a></li>							
						</ul>
					</li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">TESOURARIA<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">2ª VIA BOLETO</a></li>
							<li><a href="consultaFinanceira.jsp">CONSULTA FINANCEIRA</a></li>
						</ul>
					</li>	
					
					<li><a href="#">MENSAGENS</a></li>
					
					<li><a href="#">FÓRUM</a></li>		
					
					<li><a href="home.jsp">SAIR</a></li>
				</ul>
			</div>	
		</div> <!-- conteudo_barra-lateral -->

		<div id="conteudo_principal">
			<section>
			
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<h4>Olá, ${nomeAlunoLogado}!</h4>

							<p>
								O portal da FCA conta com este espaço exclusivo para os estudantes. <br/><br/> 

								Nele é possível consultar notas, histórico acadêmico, painel financeiro dentre outas funcionalidades.
							</p>
														
						</div>
					</div>
				</div>	
			
			</section>

		</div> <!-- conteudo-principal -->

	</div> <!-- container -->

</body>
</html>