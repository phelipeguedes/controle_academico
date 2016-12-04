package br.com.fca.autenticacao;

import br.com.fca.models.Administrador;

public interface AutenticaAdministrador {
	Administrador Administrador = null;

	public static Administrador autenticar(String nomeDeUsuario, String senha) {
		return Administrador;
	}
}
