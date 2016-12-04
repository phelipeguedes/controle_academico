package br.com.fca.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "secretarias")
public class Secretaria extends UsuarioFuncionario {
	
	private static final long serialVersionUID = 1L;
	
	private String escolaridade;
	private String experiencia;
	private String turno;
	
	@Column(nullable = false)
	public String getEscolaridade() {
		return escolaridade;
	}
	
	public void setEscolaridade(String escolaridade) {
		this.escolaridade = escolaridade;
	}
	
	@Column(nullable = false)
	public String getExperiencia() {
		return experiencia;
	}
	
	public void setExperiencia(String experiencia) {
		this.experiencia = experiencia;
	}
	
	@Column(nullable = false)
	public String getTurno() {
		return turno;
	}
	
	public void setTurno(String turno) {
		this.turno = turno;
	}
	
	public void cadastrar(){
		
	}
	
}
