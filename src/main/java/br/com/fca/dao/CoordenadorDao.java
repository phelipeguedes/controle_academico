package br.com.fca.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.fca.autenticacao.AutenticaAdministrador;
import br.com.fca.conexao.ConexaoJPA;
import br.com.fca.models.Administrador;
import br.com.fca.models.Coordenador;

public class CoordenadorDao implements AutenticaAdministrador {

	//private EntityManagerFactory emf = Persistence.createEntityManagerFactory("Faculdade_FCA");

	//private EntityManager em = emf.createEntityManager();

	public Coordenador autenticar(String login, String senha){		
		EntityManager em = ConexaoJPA.getEntityManager();
		
		try {
			Coordenador cs = (Coordenador) em.createQuery("SELECT u FROM Coordenador u WHERE u.login = :login AND u.senha = :senha")
					.setParameter("login", login)
					.setParameter("senha", senha).getSingleResult();
					
					return cs;					
		} catch (Exception e) {	
			System.out.println (e.getMessage());
		}		
			return null;
	}

}
