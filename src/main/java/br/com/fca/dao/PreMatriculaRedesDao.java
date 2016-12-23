package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;
import br.com.fca.models.PreMatricula;
import br.com.fca.preMatricula.PreMatriculaAdministracao;
import br.com.fca.preMatricula.PreMatriculaRedes;

public class PreMatriculaRedesDao {
	
	public static void matricular(PreMatriculaRedes pmr) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(pmr);
		em.getTransaction().commit();
		System.out.println("inserindo...");
		em.close();
	}

	@SuppressWarnings("unchecked")
	public List<PreMatriculaRedes> getlistarPreMatriculasRedes() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pmr FROM PreMatriculaRedes pmr ");
		List<PreMatriculaRedes> preMatriculasRedes = consulta.getResultList();
		em.close();
		return preMatriculasRedes;
	}
	
	public static PreMatriculaAdministracao encontrarPeloId(int idPreMatricula){
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(PreMatriculaAdministracao.class, idPreMatricula);
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
