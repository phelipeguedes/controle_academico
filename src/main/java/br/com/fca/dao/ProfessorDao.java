package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Professor;
import br.com.fca.professores.ProfessorAdministracao;
import br.com.fca.professores.ProfessorContabeis;
import br.com.fca.professores.ProfessorSistemas;;

public class ProfessorDao {
	
public static Professor autenticar(String nomeDeUsuario, String senha){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Professor professor = (Professor) em.createQuery("SELECT p FROM Professor p WHERE p.nomeDeUsuario = :nomeDeUsuario and p.senha = :senha")
					.setParameter("nomeDeUsuario", nomeDeUsuario)
					.setParameter("senha", senha).getSingleResult();
					
					if(professor != null){
						System.out.println("Tem!");
					} else {
						System.out.println("Não tem!");
					}
					
					return professor;
					
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
			return null;
	}
	
	public static boolean cadastrarProfessor(Professor professor){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(professor);
		em.getTransaction().commit();
		em.close();
		
		return true;
	}
	
	
	@SuppressWarnings("unchecked")
	public List<ProfessorAdministracao> getListaProfessoresAdministracao(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT p FROM Professor p where curso_id = 1 order by nome");		
		List<ProfessorAdministracao> professores = consulta.getResultList();
		em.close();
		
		return professores;		
	}
	
	
	@SuppressWarnings("unchecked")
	public List<ProfessorContabeis> getListaProfessoresContabeis(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT p FROM Professor p where curso_id = 2 order by nome");
		List<ProfessorContabeis> professores = consulta.getResultList();
		em.close();
		
		return professores;		
	}
	
	@SuppressWarnings("unchecked")
	public List<ProfessorSistemas> getListaProfessoresSistemas(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT p FROM Professor p where curso_id = 4 order by nome");
		List<ProfessorSistemas> professores = consulta.getResultList();
		em.close();
		
		return professores;		
	}
	
	public static Professor encontrarPeloId(int idProfessor){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(Professor.class, idProfessor);
	}
	
}
