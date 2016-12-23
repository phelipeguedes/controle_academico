<!DOCTYPE html>
<html lang="pt_br">
<head>
	<meta charset="UTF-8">
	<title>Cadastro de Secretaria</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cadastrar-secretaria.css">
</head>
<body>

	<header>
		<!-- barra do topo -->
		<div class="container" id="barraTopo">		
			<li><a href="#" class="navbar-brand">FCA - Cadastro de Secretaria</a></li>
		</div>
	</header>

	<h5>Dados da Secretaria</h5>

	<div class="container" id="conteudoPagina">
		<div class="formulario">
			<form action="secretarias" method="post" class="form-horizontal" role="form"> 
				<span id="info_pessoal">Informações Pessoais</span>
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Nome:</label>
					<div class="col-sm-6 col-md-5">
						<input type="text" class="form-control" name="nome" placeholder="Nome completo" required />	
					</div>					
				</div>
				
				<!--
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Nascimento:</label>
					<div class="col-sm-6 col-md-5">
						<input type="date" name="dataDeNascimento" class="form-control" placeholder="Apenas nÃºmeros">	
					</div>					
				</div>							
				-->
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_logradouro">Informações do Logradouro</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Cidade</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cidade" class="form-control">
					</div>
				</div>
				
				<!-- lista de bairros de Fortaleza -->

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Bairro</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="bairro">
							<option>Outro</option>							
							<option selected>Aerolândia</option>
							<option>Aeroporto</option>
							<option>Alagadiço Novo</option>
							<option>Aldeota</option>
							<option>Alvaro Wayne</option>
							<option>Amadeu Furtado</option>
							<option>Ancuri</option>
							<option>AntÃ´nio Bezerra</option>
							<option>Autran Nunes</option>
							<option>Barra do CearÃ¡</option>
							<option>Barroso</option>
							<option>Bela Vista</option>
							<option>Benfica</option>
							<option>Bom Jardin</option>
							<option>Bom Sucesso</option>
							<option>Cais do Porto</option>
							<option>Cajazeiras</option>
							<option>Cambeba</option>
							<option>Canidezinho</option>
							<option>Carlito Pamplona</option>
							<option>CastelÃ£o</option>
							<option>Centro</option>
							<option>Cidade 2000</option>
							<option>Cidade dos FuncionÃ¡rios</option>
							<option>CocÃ³</option>
							<option>Conjunto CearÃ¡</option>
							<option>Conjunto EsperanÃ§a</option>
							<option>Couto Fernandes</option>
							<option>CuriÃ³</option>
							<option>Damas</option>
							<option>Edson Queiroz</option>
							<option>FÃ¡tima</option>
							<option>GenibaÃº</option>
							<option>Granja Portugal</option>
							<option>Henrique Jorge</option>
							<option>ItaÃ³ca</option>
							<option>Jacarecanga</option>
							<option>JoÃ£o XXIII</option>							
						</select>
					</div>
				</div>					

				<div class="form-group">
					<label class="control-label col-md-4">Endereço:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="endereco" class="form-control" placeholder="Rua, Nº">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Cep:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cep" class="form-control" placeholder="Apenas números">
					</div>
				</div>											
				
				<!-- divide em grupos os campos do formulÃ¡rio -->
				
				<span id="info_profissionais">Informações Profissionais</span>							

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Escolaridade:</label>	
					<div class="col-sm-5 col-md-5">
						<select class="form-control"  name="escolaridade">
							<option value="Nível Médio">Nível Médio</option>
							<option value="Nível Técnico">Nível Técnico</option>
							<option value="Nível Superior Incompleto">Nível Superior Incompleto</option>
							<option value="Nível Superior Completo">Nível Superior Completo</option>
						</select>
					</div>
				</div> <!-- form-group -->

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Experiência na Função:</label>
					<div class="col-sm-6 col-md-6">
						<div class="col-md-2">
							<label class="radio-inline">
								<input type="radio" name="experiencia" id="expSim" value="Sim">Sim
							</label>
						</div>
						<div class="col-md-2">
							<label class="radio-inline">
								<input type="radio" name="experiencia" id="expNao" value="Nao">Não
							</label>
						</div>

					</div>
				</div> <!-- form-group -->

				<div class="form-group">
					<label class="control-label col-md-4">Turno:</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="turno">
							<option value="Diurno">Diurno</option>
							<option value="Noturno">Noturno</option>
						</select>
					</div>
				</div>
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_contato">Informaçõs da Conta e de Contato</span>

				<div class="form-group">
					<label class="control-label col-md-4">Telefone:</label>
					<div class="col-sm-5 col-md-5">
						<input type="tel" name="telefone" class="form-control" maxlength="14" placeholder="Apenas números">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Email:</label>
					<div class="col-sm-5 col-md-5">
						<input type="email" name="email" class="form-control">
					</div>
				</div>		
				
				<div class="form-group">
					<label class="control-label col-md-4">Nome de Usuário:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="nomeDeUsuario" class="form-control">
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-md-4">Senha:</label>
					<div class="col-sm-5 col-md-5">
						<input type="password" name="senha" class="form-control">
					</div>
				</div>		

				<div class="form-group">
					<div class="col-sm5 col-md-6 col-sm-offset-4">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="termo" required>Li e estou de acordo com os <a href="#">termos</a> desta instituição.
							</label>
						</div>
					</div>
				</div>	

				<div class="form-group">
					<div class="row">
						<div class="col-sm-offset-4 col-md-1">
							<button type="submit" class="btn btn-primary" id="btn-matricula">Cadastrar</button>		
						</div>							

						<div class="col-sm-offset-6">
							<button type="reset" class="btn btn-primary" id="btn-cancela">Cancelar</button>		
						</div>							
					</div>						
				</div>

			</form>
			
		</div> <!-- fomulÃ¡rio -->
	</div> <!-- container -->
	
	<!--  RodapÃ©-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle AcadÃªmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>