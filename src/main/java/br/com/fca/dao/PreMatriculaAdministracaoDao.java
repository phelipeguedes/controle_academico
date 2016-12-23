package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Aluno;
import br.com.fca.models.PreMatricula;
import br.com.fca.preMatricula.PreMatriculaAdministracao;

public class PreMatriculaAdministracaoDao {
	
	public static void matricular(PreMatriculaAdministracao pma) {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(pma);
		em.getTransaction().commit();
		System.out.println("inserindo...");
		em.close();
	}

	@SuppressWarnings("unchecked")
	public List<PreMatriculaAdministracao> getlistarPreMatriculasAdm() {
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT pma FROM PreMatriculaAdministracao pma ");
		List<PreMatriculaAdministracao> preMatriculasAdministracao = consulta.getResultList();
		em.close();
		return preMatriculasAdministracao;
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
