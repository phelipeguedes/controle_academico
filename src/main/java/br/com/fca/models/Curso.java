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
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS) // somente as classes concretas (que herdam) serão geradas no banco
public class Curso implements Serializable {
	
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name = "cod_curso")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer codigo;
	
	@Column(nullable = false)
	private String nome;
	
	@OneToOne
	@JoinColumn(name = "coordenador_id")
	private Administrador administrador;
	
	@OneToMany(mappedBy = "curso")
	private List <Aluno> alunos;
	
	@OneToMany(mappedBy = "curso")
	private List<Professor> professores;
	
	@OneToMany(mappedBy = "curso")
	private List <Disciplina> disciplinas;
	
	
	public Integer getCodigo() {
		return codigo;
	}
	
	public void setCodigo(Integer codigo) {
		this.codigo = codigo;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	@Column(name = "administrador")
	@OneToOne
	public Administrador getAdministrador() {
		return administrador;
	}

	public void setAdministrador(Administrador administrador) {
		this.administrador = administrador;
	}
	
	@OneToMany(mappedBy = "alunos", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	public List<Aluno> getAlunos() {
		return alunos;
	}
	
	public void setAlunos(List<Aluno> alunos) {
		this.alunos = alunos;
	}	
	
	@OneToMany(mappedBy = "professores", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	public List<Professor> getProfessores() {
		return professores;
	}

	public void setProfessores(List<Professor> professores) {
		this.professores = professores;
	}
	
	@OneToMany(mappedBy = "disciplinas", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}
	
	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}
	
}
