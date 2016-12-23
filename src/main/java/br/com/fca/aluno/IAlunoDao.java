package br.com.fca.aluno;

import java.util.List;

import br.com.fca.models.Aluno;

public interface IAlunoDao {
	
	static void matricular(Aluno aluno) {
	}
	
	static Aluno autenticar(String email, String senha){
		return null;
	}
	
	static List<Aluno> getLista(){
		return null;
	}
	
	static Aluno getMatricula(){
		return null;
	}
	
	static void atualizarAluno(Aluno aluno){
	}
	
	static void removerAluno(Aluno aluno){
	}
}
