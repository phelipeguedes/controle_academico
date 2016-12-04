package br.com.fca.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class Dao {
	
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("Faculdade_FCA");
	
	private EntityManager eManager = emf.createEntityManager();

	public EntityManager getEManager() {
		return eManager;
	}
	
	/*
	private EntityManagerFactory entityManager;
	
	public EntityManager getEntityManager(){
		return entityManager.createEntityManager();
	}
	
	public Dao(){
		this.entityManager = Persistence.createEntityManagerFactory("Faculdade_FCA");
	}*/
}
