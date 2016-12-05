<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Matrícula de Aluno</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/matricular-aluno.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>

<body>
	
	<header>
		<!-- barra do topo -->
		<div class="container" id="barraTopo">		
			<li><a href="#" class="navbar-brand">FCA - Matricula de Alunos</a></li>
		</div>
	</header>

	<h5>Dados do Aluno(a)</h5>

	<div class="container" id="conteudoPagina">
		
		<div class="formulario">
			<form action="alunos" method="post" class="form-horizontal" role="form"> 

			 	<!-- divide em grupos os campos do formulÃ¡rio -->

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
						<input type="text" name="dataDeNascimento" class="form-control" placeholder="Apenas NÃºmeros">	
					</div>					
				</div>
				-->
				
				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Sexo:</label>
					<div class="col-sm-6 col-md-6">
						
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="femaleRadio" value="Female">Feminino
							</label>
						</div>
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="maleRadio" value="Male">Masculino
							</label>
						</div>

					</div>
				</div> <!-- form-group -->				
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_logradouro">Informações do Endereço</span>

				<div class="form-group">
					
					<label for="" class="control-label col-sm-2 col-md-4">Cidade</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" class="form-control" name="cidade">
					</div>
				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Bairro</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="bairro">		
							<option value="outro">Outro</option>					
							<option value="Aerolândia" selected>AerolÃ¢ndia</option>
							<option value="Aeroporto">Aeroporto</option>
							<option value="Alagadiço Novo">Alagadiço Novo</option>
							<option value="Aldeota">Aldeota</option>
							<option value="Alvaro Wayne">Alvaro Wayne</option>
							<option value="Amadeu Furtado">Amadeu Furtado</option>
							<option value="Ancuri">Ancuri</option>
							<option value="Antônio Bezerra">Antônio Bezerra</option>
							<option value="Autran Nunes">Autran Nunes</option>
							<option value="Barra do Ceará">Barra do Ceará</option>
							<option value="Barroso">Barroso</option>
							<option value="Bela Vista">Bela Vista</option>
							<option value="Benfica">Benfica</option>
							<option value="Bom Jardim">Bom Jardim</option>
							<option value="Bom Sucesso">Bom Sucesso</option>
							<option value="Cais do Porto">Cais do Porto</option>
							<option value="Cajazeiras">Cajazeiras</option>
							<option value="Cambeba">Cambeba</option>
							<option value="Canidezinho">Canidezinho</option>
							<option value="Carlito Pamplona">Carlito Pamplona</option>
							<option value="Castelão">Castelão</option>
							<option value="Centro">Centro</option>
							<option value="Cidade 2000">Cidade 2000</option>
							<option value="Cidade dos Funcionários">Cidade dos Funcionários</option>
							<option value="Cocó">Cocó</option>
							<option value="Conjunto Ceará">Conjunto Ceará</option>
							<option value="Conjunto Esperança">Conjunto Esperança</option>
							<option value="Couto Fernandes">Couto Fernandes</option>
							<option value="Curió">Curió</option>
							<option value="Damas">Damas</option>
							<option value="Edson Queiroz">Edson Queiroz</option>
							<option value="Fátima">Fátima</option>
							<option value="Genibaú">Genibaú</option>
							<option value="Granja Portugal">Granja Portugal</option>
							<option value="Henrique Jorge">Henrique Jorge</option>
							<option value="Itaóca">Itaóca</option>
							<option value="Jacarecanga">Jacarecanga</option>
							<option value="João XXIII">João XXIII</option>
							<option value="Jockey Clube">Jockey Clube</option>								
						</select>
					</div>
				</div>					

				<div class="form-group">
					
					<label class="control-label col-md-4">Endereço:</label>					
					<div class="col-sm-5 col-md-5">
						<input type="text" name="endereco" class="form-control" placeholder="Rua, NÂº">
					</div>
				</div>

				<div class="form-group">
					
					<label class="control-label col-md-4">Cep:</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cep" class="form-control" placeholder="Apenas Números">
					</div>
				</div>
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_academicas">Informações Acadêmicas</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Curso:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="curso">
							<optgroup label="Graduação">
								<option value="1">Administração</option>
								<option value="2">Contabilidade</option>
								<option value="3">Redes de Computadores</option>
								<option value="4">Sistemas de Informação</option>
							</optgroup>

							<optgroup label="Extensão">
								<optgroup label="Administração">
									<option>Adm e Desenvolvimento Empresarial</option>
									<option>Administração Pública</option>	
								</optgroup>	

								<optgroup label="Contábeis">
									<option>Consultoria Empresarial</option>
									<option>Gestão de Contas Públicas</option>
								</optgroup>	

								<optgroup label="Redes">
									<option>Segurança de Redes de Computadores</option>
									<option>Segurança da Informação</option>
								</optgroup>

								<optgroup label="Sistemas de Informação">
									<option>Desenvolvimento Mobile</option>
									<option>Design Digital</option>
								</optgroup>							
							</optgroup>
						</select>							
					</div>					
				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Turno:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="turno">
							<option value="Diurno">Diurno</option>	
							<option value="Noturno">Noturno</option>
						</select>
					</div>

				</div>

				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Financiamento:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="financiamento">
							<option value="Educa Mais">Educa Mais</option>
							<option value="Fies" selected>Fies</option>
							<option value="Prouni">Prouni</option>
							<option value="Pra Valer">Pra Valer</option>							
							<option value="Não Possui">Não possui</option>
						</select>
					</div>
				</div>		
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_contato">Informações de Contato</span>

				<div class="form-group">
					<label class="control-label col-md-4">Telefone:</label>
					<div class="col-sm-5 col-md-5">
						<input type="tel" name="telefone" class="form-control" maxlength="14" placeholder="Apenas Números">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-md-4">Email:</label>
					<div class="col-sm-5 col-md-5">
						<input type="email" name="email" class="form-control">
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
								<input type="checkbox" name="termo" required>Li e estou de acordo com os <a href="#">termos</a> desta instituiÃ§Ã£o.
							</label>
						</div>
					</div>
				</div>	

				<div class="form-group">
					<div class="row">
						<div class="col-sm-offset-4 col-md-1">
							<button type="submit" class="btn btn-primary" id="btn-matricula">Matricular</button>		
						</div>							

						<div class="col-sm-offset-6">
							<button type="reset" class="btn btn-primary" id="btn-cancela">Cancelar</button>		
						</div>							
					</div>						
				</div>

			</form>
		</div> <!--- container -->
	</div> <!--- formulÃ¡rio -->
	
	<!--  RodapÃ©-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle AcadÃªmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>