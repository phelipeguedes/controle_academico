package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Disciplina;

public class DisciplinaDao {
	
public static boolean cadastrarDisciplina(Disciplina disciplina){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(disciplina);
		em.getTransaction().commit();
		em.close();
		
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Disciplina> getLista(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT d FROM Disciplina d where curso_id = 4");
		List<Disciplina> disciplinas = consulta.getResultList();
		em.close();
		
		return disciplinas;		
	}
}
