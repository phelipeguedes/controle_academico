package br.com.fca.models;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "coordenadores")
public class Coordenador extends Administrador {

	private static final long serialVersionUID = 1L;	
}
