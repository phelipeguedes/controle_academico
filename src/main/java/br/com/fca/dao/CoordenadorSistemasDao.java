package br.com.fca.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.fca.autenticacao.AutenticaAdministrador;
import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Administrador;
import br.com.fca.models.CoordenadorSistemas;

public class CoordenadorSistemasDao implements AutenticaAdministrador {

	//private EntityManagerFactory emf = Persistence.createEntityManagerFactory("Faculdade_FCA");

	//private EntityManager em = emf.createEntityManager();

	public CoordenadorSistemas autenticar(String login, String senha){		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			CoordenadorSistemas cs = (CoordenadorSistemas) em.createQuery("SELECT u FROM CoordenadorSistemas u WHERE u.login = :login AND u.senha = :senha")
					.setParameter("login", login)
					.setParameter("senha", senha).getSingleResult();
					
					return cs;					
		} catch (Exception e) {	
			System.out.println (e.getMessage());
		}		
			return null;
	}

}
