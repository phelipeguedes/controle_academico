package br.com.fca.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Secretaria;

public class SecretariaDao {
	
	public static Secretaria autenticar(String nomeDeUsuario, String senha){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Secretaria secretaria = (Secretaria) em.createQuery("SELECT u FROM Secretaria u WHERE u.nomeDeUsuario = :nomeDeUsuario and u.senha = :senha")
					.setParameter("nomeDeUsuario", nomeDeUsuario)
					.setParameter("senha", senha).getSingleResult();
					
					if(secretaria != null){
						System.out.println("Tem!");
					} else {
						System.out.println("Não tem!");
					}
					
					return secretaria;
					
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
			return null;
	}
	
	public static boolean cadastrarSecretaria(Secretaria secretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		em.getTransaction().begin();
		em.persist(secretaria);
		em.getTransaction().commit();
		em.close();
		
		return true;
	}
	
	@SuppressWarnings("unchecked")
	public List<Secretaria> getListaSecretarias(){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		Query consulta = em.createQuery("SELECT s FROM Secretaria s");
		List<Secretaria> secretarias = consulta.getResultList();
		em.close();
		
		return secretarias;		
	}
	
	public static Secretaria encontrarPeloId(int idSecretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		return em.find(Secretaria.class, idSecretaria);
	}
	
	public static void atualizarSecretaria(Secretaria secretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(secretaria);
		em.persist(secretaria);
		em.getTransaction().commit();
		em.close();
	}
	
	public static void excluirSecretaria(Secretaria secretaria){
		
		EntityManager em = ConexaoJPA.getEntityManager();
		em.getTransaction().begin();
		em.merge(secretaria);
		em.remove(secretaria);
		em.getTransaction().commit();
		em.close();
	}
	
	
	
	
}
