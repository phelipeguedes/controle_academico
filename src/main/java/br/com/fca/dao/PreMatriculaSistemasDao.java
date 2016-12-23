package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.preMatricula.PreMatriculaSistemas;

public class PreMatriculaSistemasDao {

	public static void cadastrar(PreMatriculaSistemas pms) {
		EntityManager em = ConexaoJPA.getEntityManager();

		em.getTransaction().begin();
		em.persist(pms);
		em.getTransaction().commit();

		em.close();
	}

	public List<PreMatriculaSistemas> getlistarPreMatriculasSistemas() {
		EntityManager em = ConexaoJPA.getEntityManager();

		Query consulta = em.createQuery("SELECT pms FROM PreMatriculaSistemas pms");
		@SuppressWarnings("unchecked")
		List<PreMatriculaSistemas> preMatriculaSistemas = consulta.getResultList();
		em.close();
		return preMatriculaSistemas;
	}

	public static void remover(PreMatriculaSistemas pms) {
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(pms);
		em.remove(pms);
		em.getTransaction().commit();
		em.close();
	}

	public static PreMatriculaSistemas encontrarPeloId(int id) {
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(PreMatriculaSistemas.class, id);
	}

	public void atualizar(PreMatriculaSistemas t) {
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(t);
		em.persist(t);
		em.getTransaction().commit();
		em.close();

	}

}
