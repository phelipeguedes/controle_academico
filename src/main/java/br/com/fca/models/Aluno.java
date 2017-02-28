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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.eclipse.persistence.jpa.config.Cascade;

@Entity
@Table(name = "alunos")
public class Aluno implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.TABLE)
	private int matricula;

	private String nome;

	/*
	 * @Column(name = "data_de_nascimento", nullable = false)
	 * 
	 * @Temporal(TemporalType.DATE) private Calendar dataDeNascimento;
	 */
	
	@OneToMany(mappedBy = "aluno", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Nota> notas;
	
	@OneToMany(mappedBy = "aluno", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Mensalidade> mensalidades;

	private String sexo;
	private String cidade;
	private String bairro;
	private String endereco;
	private String cep;

	// composição: coluna que terá a chave estrangeira do relacionamento
	@ManyToOne
	@JoinColumn(name = "curso_id")
	private Curso curso;

	/*@ManyToMany(mappedBy = "alunos", fetch = FetchType.LAZY)
	private List<Disciplina> disciplinas;*/
	
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "alunos_disciplinas",
		joinColumns = {
			@JoinColumn(name = "aluno_id")
		}, 
		inverseJoinColumns = {
			@JoinColumn(name = "disciplina_id")
		}
	)
	
	private List<Disciplina> disciplinas;
	private String semestre;
	private String turno;
	private String financiamento;
	private String telefone;
	private String email;
	private String senha;

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	@Column(nullable = false)
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	/*
	 * @Column(nullable = false) public Calendar getDataDeNascimento() { return
	 * dataDeNascimento; }
	 * 
	 * public void setDataDeNascimento(Calendar dataDeNascimento) {
	 * this.dataDeNascimento = dataDeNascimento; }
	 */

	@Column(nullable = false)
	public String getSexo() {
		return sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}

	@Column(nullable = false)
	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	@Column(nullable = false)
	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	@Column(nullable = false)
	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	@Column(nullable = false)
	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
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

	@Column(nullable = false)
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Column(nullable = false)
	public Curso getCurso() {
		return curso;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	
	@Column(nullable = false)
	public String getSemestre(){
		return semestre;
	}
	
	public void setSemestre(String semestre){
		this.semestre = semestre;
	}

	@Column(nullable = false)
	public String getTurno() {
		return turno;
	}

	public void setTurno(String turno) {
		this.turno = turno;
	}

	@Column(nullable = false)
	public String getFinanciamento() {
		return financiamento;
	}

	public void setFinanciamento(String financiamento) {
		this.financiamento = financiamento;
	}

	/*@OneToMany(mappedBy = "disciplinas")
	public List<Disciplina> getDisciplinas() {
		return disciplinas;
	}*/

	public void setDisciplinas(List<Disciplina> disciplinas) {
		this.disciplinas = disciplinas;
	}

	public boolean autenticar(String email, String senha) {
		return false;
	}

	public List<Nota> getNotas() {
		return notas;
	}

	public void setNota(List<Nota> notas) {
		this.notas = notas;
	}
	
	public List<Mensalidade> getMensalidades() {
		return mensalidades;
	}

	public void setMensalidades(List<Mensalidade> mensalidades) {
		this.mensalidades = mensalidades;
	}
}
