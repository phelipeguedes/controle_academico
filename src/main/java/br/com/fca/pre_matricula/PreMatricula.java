package br.com.fca.pre_matricula;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;

@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS)	// somente as classes concretas (que herdam) serão geradas no banco
public abstract class PreMatricula implements Serializable {

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id_pre_matricula;
	private String nome_aluno;
	private String sexo;
	private Calendar nascimento;
	private String cep;
	private String cidade;
	private String logradouro;
	private String curso;
	private String turno;
	private String telefone;
	private String email;

	public Integer getId_pre_matricula() {
		return id_pre_matricula;
	}

	public void setId_pre_matricula(Integer id_pre_matricula) {
		this.id_pre_matricula = id_pre_matricula;
	}
	
	@Column(nullable = false)
	public String getNome_aluno() {
		return nome_aluno;
	}

	public void setNome_aluno(String nome_aluno) {
		this.nome_aluno = nome_aluno;
	}
	
	@Column(nullable = false)
	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	@Column(nullable = false)
	public Calendar getNascimento() {
		return nascimento;
	}
	
	public void setNascimento(Calendar nascimento) {
		this.nascimento = nascimento;
	}
	
	@Column(nullable = false)
	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	@Column(nullable = false)
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	@Column(nullable = false)
	public String getLogradouro() {
		return logradouro;
	}

	public void setLogradouro(String logradouro) {
		this.logradouro = logradouro;
	}
	
	@Column(nullable = false)
	public String getCurso() {
		return curso;
	}

	public void setCurso(String curso) {
		this.curso = curso;
	}
	
	@Column(nullable = false)
	public String getTurno() {
		return turno;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}
	
	@Column(nullable = false)
	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}
	
	@Column(nullable = false)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
