<!DOCTYPE html>
<html lang="pt_br">

<head>
	<meta charset="UTF-8">
	<title>Cadastro de Professor(a)</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/cadastrar-professor.css">
</head>

<body>

	<header>
		<!-- barra do topo -->
		<div class="container" id="barraTopo">		
			<li><a href="#" class="navbar-brand">FCA - Cadastro de Docentes</a></li>
		</div>
	</header>

	<h5>Dados do Professor(a)</h5>

	<div class="container" id="conteudoPagina">
		<div class="formulario">
			<form action="professores_sistemas" method="post" class="form-horizontal" role="form"> 
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
						<input  type="date" name="dataDeNascimento" class="form-control" placeholder="Apenas NÃºmeros">	
					</div>					
				</div>
				-->
				
				<div class="form-group">
					<label class="control-label col-sm-2 col-md-4">Sexo:</label>
					<div class="col-sm-6 col-md-6">
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="femaleRadio" value="Feminino">Feminino
							</label>
						</div>
						<div class="col-md-3">
							<label class="radio-inline">
								<input type="radio" name="sexo" id="maleRadio" value="Masculino">Masculino
							</label>
						</div>

					</div>
				</div> <!-- form-group -->				
				
				<!-- divide em grupos os campos do formulÃ¡rio -->

				<span id="info_logradouro">Informações do Logradouro</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Cidade</label>
					<div class="col-sm-5 col-md-5">
						<input type="text" name="cidade" class="form-control" name="cidade">
					</div>
				</div>
				
				<!-- lista de bairros de Fortaleza -->

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Bairro</label>
					<div class="col-sm-5 col-md-5">
						<select class="form-control" name="bairro">
							<option>Outro</option>
							<option selected>Aerolândia</option>
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
						<input type="text" name="cep" class="form-control" placeholder="Apenas Números">
					</div>
				</div>
				
				<!-- divide em grupos os campos do formulÃ¡rio -->
				
				<span id="info_academicas">Informações Acadêmicas</span>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Curso:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="curso">
							<optgroup label="Graduacao">
								<option value="4">Sistemas de Informação</option>
							</optgroup>

							<optgroup label="Extensao">
								<optgroup label="Administracao">
									<option>Adm e Desenvolvimento Empresarial</option>
									<option>Administração Pública</option>	
								</optgroup>	

								<optgroup label="ContÃ¡beis">
									<option>Consultoria Empresarial</option>
									<option>Gestão de Contas Públicas</option>
								</optgroup>	

								<optgroup label="Redes">
									<option>Segurança de Redes de Computadores</option>
									<option>Segurança da Informação</option>
								</optgroup>

								<optgroup label="Sistemas de Informaco">
									<option>Desenvolvimento Mobile</option>
									<option>Design Digital</option>
								</optgroup>							
							</optgroup>
						</select>							
					</div>					
				</div> <!-- form-group -->
				
				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Disciplina:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="disciplina">
							<option value="1">Algoritmos</option>
							<option value="2">Arquitetura de Computadores</option>
							<option value="3">Banco de Dados I</option>
							<option value="4">Banco de Dados II</option>
							<option value="5">Cálculo Dif. Int.</option>
							<option value="6">Desenvolvimento de Sistemas I</option>
							<option value="7">Desenvolvimento de Sistemas II</option>
							<option value="8">Economia</option>
							<option value="9">Engenharia de Software</option>							
							<option value="10">Estatística</option>
							<option value="11">Estrutura de Dados</option>
							<option value="12">Fundamentos da Administração</option>	
							<option value="13">Gestão de TI</option>
							<option value="14">Intro Informática</option>
							<option value="15">Inglês Técnico</option>
							<option value="16">Matemática Dscreta</option>
							<option value="17">POO1</option>
							<option value="18">POO2</option>							
							<option value="19">Progamação Estruturada</option>							
							<option value="20">Redes de Computadores</option>														
						</select>
					</div>

				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Turno:</label>
					<div class="col-sm-6 col-md-5">
						<select class="form-control" name="turno">
							<option value="Diurno">Diurno</option>	
							<option value="Noturno">Noturno</option>
							<option value="Diurno e Noturno">Diurno e Noturno</option>
						</select>
					</div>

				</div>

				<div class="form-group">
					<label for="" class="control-label col-sm-2 col-md-4">Título:</label>
					<dv class="col-sm-6 col-md-5">
						<select class="form-control" name="titulo">
							<option value="Bacharel">Graduação</option>
							<option value="Especialização">Especialização</option>
							<option value="Mestre">Mestrado</option>
							<option value="Doutor">Doutorado</option>
							<option value="Pós-Doutorado">Pós-Doutorado</option>
						</select>	
					</dv>

				</div>					
				
				<!-- divide em grupos os campos do formulário -->

				<span id="info_contato">Informações da Conta e de Contato</span>

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
								<input type="checkbox" name="termo" required>Li e estou de acordo com os <a href="#">termos</a> desta instituiÃ§Ã£o.
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
		</div> <!-- fomulário -->
	</div> <!-- container -->
	
	<!--  Rodapé-->
	<footer class="footer">
		<div class="container">
			<p class="text-muted">2016 | Fortaleza | Faculdade Controle Acadêmico - All Rights Reserved</p>
		</div>
	</footer>
	
</body>
</html>