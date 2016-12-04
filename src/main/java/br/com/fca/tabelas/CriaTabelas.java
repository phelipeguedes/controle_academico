package br.com.fca.tabelas;

import javax.persistence.Persistence;

public class CriaTabelas {
	
	public static void main(String[] args) {
		
		Persistence.createEntityManagerFactory("Faculdade_FCA");
	}
}
