package br.com.fca.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Disciplina implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@Column(name = "id_disciplina")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int codigo;
	
	private String nome;
	private Curso curso;
	private String semestre;
	
	@ManyToOne
	@JoinColumn(name = "professor_id")
	private Professor professor;
	
	@ManyToMany
	@JoinTable(name = "alunos_disciplinas", joinColumns = {
			@JoinColumn(name = "aluno_id")
	}, inverseJoinColumns = {
			@JoinColumn(name = "disciplina_id")
	})
	private List<Aluno> alunos;	
	
	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	
	@Column(nullable = false)
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@ManyToOne(optional = false)
	@JoinColumn(name = "curso_id")
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	
	@OneToOne
	@Column(name = "professor", nullable = false)
	public Professor getProfessor() {
		return professor;
	}

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
	
	@OneToMany(mappedBy = "disciplinas", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinColumn(name = "aluno_id")
	public List<Aluno> getAlunos() {
		return alunos;
	}

	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}

}
