package br.com.fca.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.EntityManager;
import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;

public class AlunoDao {

	public static Aluno autenticar(String email, String senha) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Aluno aluno = (Aluno) em.createQuery("SELECT u FROM Aluno u WHERE u.email = :email and u.senha = :senha")
					.setParameter("email", email).setParameter("senha", senha).getSingleResult();

			return aluno;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public static void matricular(Aluno aluno) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(aluno);
		em.getTransaction().commit();
		System.out.println("inserindo...");
		em.close();
	}

	@SuppressWarnings("unchecked")
	public static List<Aluno> listarAlunos() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT a FROM Aluno a");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	public static Aluno encontrarPelaMatricula(int matriculaAluno){
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(Aluno.class, matriculaAluno);
	}
	
	public static void atualizarAluno(Aluno aluno){
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(aluno);
		em.persist(aluno);
		em.getTransaction().commit();
		em.close();
	}
	
	public static void excluirAluno(Aluno aluno){
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(aluno);
		em.remove(aluno);
		em.getTransaction().commit();
		em.close();
	}
}
