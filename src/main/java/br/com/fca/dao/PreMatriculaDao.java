package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;
import br.com.fca.models.PreMatricula;
import br.com.fca.preMatricula.PreMatriculaAdministracao;

public class PreMatriculaDao {
	
	public static void matricular(PreMatricula pm) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(pm);
		em.getTransaction().commit();
		System.out.println("inserindo...");
		em.close();
	}

	// pré-matrícula administracao
	@SuppressWarnings("unchecked")
	public List<PreMatricula> getlistarPreMatriculasAdm() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pm FROM PreMatricula pm where curso_id = 1");
		List<PreMatricula> preMatriculasAdministracao = consulta.getResultList();
		em.close();
		return preMatriculasAdministracao;
	}
	
	// pré-matrícula contábeis
	@SuppressWarnings("unchecked")
	public List<PreMatricula> getlistarPreMatriculasContabeis() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pm FROM PreMatricula pm where curso_id = 2");
		List<PreMatricula> preMatriculasContabeis = consulta.getResultList();
		em.close();
		return preMatriculasContabeis;
	}
	
	//pré-matrícula redes
	@SuppressWarnings("unchecked")
	public List<PreMatricula> getlistarPreMatriculasRedes() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pm FROM PreMatricula pm where curso_id = 3");
		List<PreMatricula> preMatriculasRedes = consulta.getResultList();
		em.close();
		return preMatriculasRedes;
	}
	
	// pré-matrícula Sistemas
	@SuppressWarnings("unchecked")
	public List<PreMatricula> getlistarPreMatriculasSistemas() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pm FROM PreMatricula pm where curso_id = 4");
		List<PreMatricula> preMatriculasSistemas = consulta.getResultList();
		em.close();
		return preMatriculasSistemas;
	}
	
	public static PreMatricula encontrarPeloId(int idPreMatricula){
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(PreMatricula.class, idPreMatricula);
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
