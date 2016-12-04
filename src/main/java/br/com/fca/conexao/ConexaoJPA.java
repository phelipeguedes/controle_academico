package br.com.fca.conexao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ConexaoJPA {
	
	public static EntityManager getEntityManager(){
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("Faculdade_FCA");
		
		return emf.createEntityManager(); 
	}
}
