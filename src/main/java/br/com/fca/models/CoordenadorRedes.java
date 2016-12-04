package br.com.fca.models;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.autenticacao.AutenticaFuncionario;

@Entity
@Table(name = "coordenador_redes")
public class CoordenadorRedes extends Administrador{

	private static final long serialVersionUID = 1L;

	@Override
	public void cadastrarProfessor(Professor professor) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void cadastarDisciplina(Disciplina disciplina) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void matricularAluno(Aluno aluno) {
		// TODO Auto-generated method stub
		
	}

}
