package br.com.fca.autenticacao;

import br.com.fca.models.Administrador;

public interface AutenticaFuncionario {
	public boolean autenticar(String nomeDeUsuario, String senha);
}
