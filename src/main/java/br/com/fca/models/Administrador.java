package br.com.fca.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;

/* Coordenador do curso de Administração */

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS) // somente as classes concretas (que herdam) serão geradas no banco
public abstract class Administrador implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(nullable = false)
	private Integer id;
	
	@Column
	private String nome;
	
	//@Column(name="curso_id")
	@OneToOne(mappedBy="administrador")
	private Curso curso;
	
	private String login;
	private String senha;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	//@OneToOne(mappedBy="administrador")
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}	
	
	@Column(nullable = false)
	public String getLogin() {
		return login;
	}
	
	public void setLogin(String login) {
		this.login = login;
	}
	
	@Column(nullable = false)
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public void cadastrarProfessor(Professor professor){
		//
	}
	
	public void cadastarDisciplina(Disciplina disciplina){
		//
	}
	
	public void matricularAluno(Aluno aluno){
		//
	}

}
