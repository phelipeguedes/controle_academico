package br.com.fca.models;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "professores")
public class Professor extends UsuarioFuncionario {
	
	private static final long serialVersionUID = 1L;
	
	private String titulo;
	private String turno;	
	
	@ManyToOne
	@JoinColumn(name = "curso_id")	// composição
	private Curso curso;
	
	@OneToMany(mappedBy = "professor")
	private List<Disciplina> disciplina;
	
	@Column(nullable = false)
	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}	
	
	@Column(nullable = false)
	public String getTurno() {
		return turno;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}
	
	@Column(nullable = false)
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	
	public List<Disciplina> getDisciplina() {
		return disciplina;
	}

	public void setDisciplina(List<Disciplina> disciplina) {
		this.disciplina = disciplina;
	}
	
}
