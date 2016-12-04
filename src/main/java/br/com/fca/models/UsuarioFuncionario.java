package br.com.fca.models;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.Calendar;
import java.util.HashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.apache.commons.beanutils.BeanUtilsBean;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.converters.SqlDateConverter;

@SuppressWarnings("serial")
@Entity
@Inheritance(strategy=InheritanceType.TABLE_PER_CLASS) // somente as classes concretas (que herdam) serão geradas no banco
public abstract class UsuarioFuncionario implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String nome;
	//private Calendar dataDeNascimento;
	private String sexo;
	private String cidade;
	private String bairro;
	private String endereco;
	private String cep;
	private String telefone;
	private String email;
	private String nomeDeUsuario;
	private String senha;
	
	public Object populate(Object obj, HashMap<String, String[]> formData)
            throws IllegalAccessException, InvocationTargetException {
        ConvertUtils
                .register(new SqlDateConverter(), java.util.Date.class);
        BeanUtilsBean.getInstance().populate(obj, formData);
        return obj;
    }
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	@Column(length = 50, nullable = false)
	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
	
	/*
	@Temporal(TemporalType.DATE)
	@Column(name = "data_de_nascimento", nullable = false)
	public Calendar getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Calendar dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}
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
	public String getSenha(){
		return senha;
	}
	
	public void setSenha(String senha){
		this.senha = senha;
	}
	
	@Column(name = "nome_de_usuario", length = 40, nullable = false)
	public String getNomeDeUsuario() {
		return nomeDeUsuario;
	}

	public void setNomeDeUsuario(String nomeDeUsuario) {
		this.nomeDeUsuario = nomeDeUsuario;
	}
}
