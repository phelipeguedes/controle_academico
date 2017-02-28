package br.com.fca.autenticacao;

import br.com.fca.models.Coordenador;

public interface AutenticaAdministrador {

	public Coordenador autenticar(String nomeDeUsuario, String senha);
}
