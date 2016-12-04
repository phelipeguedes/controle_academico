package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Professor;;

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
	public static List<Professor> listarProfessores(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT p FROM Professor p");
		List<Professor> professores = consulta.getResultList();
		em.close();
		
		return professores;		
	}
	
	public static Professor encontrarPeloId(int idSecretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(Professor.class, idSecretaria);
	}
	
	public static void atualizarSecretaria(Professor secretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(secretaria);
		em.persist(secretaria);
		em.getTransaction().commit();
		em.close();
	}
	
	public static void excluirSecretaria(Professor secretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(secretaria);
		em.remove(secretaria);
		em.getTransaction().commit();
		em.close();
	}
}
