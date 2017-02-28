package br.com.fca.dao;

import javax.persistence.EntityManager;
import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;

public class AlunoLoginDao {
	
	public static Aluno autenticar(String email, String senha) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Aluno aluno = (Aluno) em.createQuery("SELECT a FROM Aluno a WHERE a.email = :email and a.senha = :senha")
					.setParameter("email", email).setParameter("senha", senha).getSingleResult();

			return aluno;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}
	
	
}
