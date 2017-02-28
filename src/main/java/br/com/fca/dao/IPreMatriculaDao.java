package br.com.fca.dao;

import java.util.List;

public interface IPreMatriculaDao <t> {
	
	void salvar(t t);
	List <t> listarTudo();
	t encontrarPeloId(int id);
	void remover(t t);
	void atualizar(t t);
	
}
