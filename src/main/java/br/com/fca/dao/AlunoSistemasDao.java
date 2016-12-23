package br.com.fca.dao;

import java.util.List;

import javax.persistence.Query;

import javax.persistence.EntityManager;

import br.com.fca.aluno.IAlunoDao;
import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;

public class AlunoSistemasDao implements IAlunoDao {

	public static Aluno autenticar(String email, String senha) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Aluno aluno = (Aluno) em.createQuery("SELECT a FROM AlunoSistemas a WHERE a.email = :email and a.senha = :senha")
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
	public List<Aluno> getListaAdm() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT as FROM AlunoSistemas as WHERE curso_id = 1");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	@SuppressWarnings("unchecked")
	public List<Aluno> getListaContabeis() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT as FROM AlunoSistemas as WHERE curso_id = 2");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	@SuppressWarnings("unchecked")
	public List<Aluno> getListaRedes() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT as FROM AlunoSistemas as WHERE curso_id = 3");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	@SuppressWarnings("unchecked")
	public List<Aluno> getListaSistemas() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT a FROM Aluno a WHERE curso_id = 4");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	@SuppressWarnings("unchecked")
	public List<Aluno> getListaTodos() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT a FROM Aluno a ORDER BY nome");
		List<Aluno> alunos = consulta.getResultList();
		em.close();
		return alunos;
	}
	
	public Aluno getMatricula(int matriculaAluno){
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
	
	public static void removerAluno(Aluno aluno){
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(aluno);
		em.remove(aluno);
		em.getTransaction().commit();
		em.close();
	}
}
