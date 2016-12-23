package br.com.fca.autenticacao;

import br.com.fca.models.CoordenadorSistemas;

public interface AutenticaAdministrador {

	public CoordenadorSistemas autenticar(String nomeDeUsuario, String senha);
}
