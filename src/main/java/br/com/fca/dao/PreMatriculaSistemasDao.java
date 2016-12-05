package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.pre_matricula.PreMatriculaSistemas;

public class PreMatriculaSistemasDao implements PreMatriculaDao<PreMatriculaSistemas> {

	@Override
	public void salvar(PreMatriculaSistemas t) {
		EntityManager em = ConexaoJPA.getEntityManager();

		em.getTransaction().begin();
		em.persist(t);
		em.getTransaction().commit();

		em.close();
	}

	@Override
	public List<PreMatriculaSistemas> listarTudo() {
		EntityManager em = ConexaoJPA.getEntityManager();

		Query consulta = em.createQuery("SELECT pms FROM PreMatriculaSistemas pms");
		@SuppressWarnings("unchecked")
		List<PreMatriculaSistemas> preMatriculaSistemas = consulta.getResultList();
		em.close();
		return preMatriculaSistemas;
	}

	@Override
	public void remover(PreMatriculaSistemas t) {
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(t);
		em.remove(t);
		em.getTransaction().commit();
		em.close();
	}

	@Override
	public PreMatriculaSistemas encontrarPeloId(int id) {
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(PreMatriculaSistemas.class, id);
	}

	@Override
	public void atualizar(PreMatriculaSistemas t) {
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(t);
		em.persist(t);
		em.getTransaction().commit();
		em.close();

	}

}
