package br.com.fca.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "mensalidades")
public class Mensalidade {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id_lancamento")
	private int codigoLancamento;
	
	@ManyToOne
	@JoinColumn(name = "aluno_id")
	private Aluno aluno;

	@Column(name = "data_emissao")
	private Date dataEmissao;

	@Column(name = "data_vencimento")
	private Date dataVencimento;

	private String valor;

	public int getCodigoLancamento() {
		return codigoLancamento;
	}

	public void setCodigoLancamento(int codigoLancamento) {
		this.codigoLancamento = codigoLancamento;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public Date getDataVencimento() {
		return dataVencimento;
	}

	public void setDataVencimento(Date dataVencimento) {
		this.dataVencimento = dataVencimento;
	}

	public String getValor() {
		return valor;
	}

	public void setValor(String valor) {
		this.valor = valor;
	}

	public Aluno getAluno() {
		return aluno;
	}

	public void setAluno(Aluno aluno) {
		this.aluno = aluno;
	}

}
