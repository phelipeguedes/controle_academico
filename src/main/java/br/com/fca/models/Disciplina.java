package br.com.fca.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "disciplinas")
public class Disciplina implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_disciplina")
	@GeneratedValue(strategy=GenerationType.TABLE)
	private int id;
	
	@Column
	private String sigla;
	
	@Column
	private String nome;

	@ManyToOne(optional = false)
	@JoinColumn(name = "curso_id")
	private Curso curso;
	
	private String semestre;
	
	@ManyToOne
	@JoinColumn(name = "professor_id")
	private Professor professor;
	
	@OneToMany(mappedBy = "disciplina")
	private List<Nota> notas;
	
	/*@ManyToMany
	@JoinTable(name = "alunos_disciplinas", joinColumns = {
			@JoinColumn(name = "aluno_id")
	}, inverseJoinColumns = {
			@JoinColumn(name = "disciplina_id")
	})
	private List<Aluno> alunos;*/	
	
	public List<Nota> getNotas() {
		return notas;
	}

	public void setNotas(List<Nota> notas) {
		this.notas = notas;
	}

	public Professor getProfessor() {
		return professor;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getSigla() {
		return sigla;
	}

	public void setSigla(String sigla) {
		this.sigla = sigla;
	}
	
	@Column(nullable = false)
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	
	/*@OneToOne
	@Column(name = "professor", nullable = false)
	public Professor getProfessor() {
		return professor;
	}*/

	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	
	@Column(nullable = false)
	public String getSemestre() {
		return semestre;
	}

	public void setSemestre(String semestre) {
		this.semestre = semestre;
	}
	
	/*@OneToMany(mappedBy = "disciplinas", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "aluno_id")
	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}*/

}
