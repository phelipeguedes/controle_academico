package br.com.fca.aluno;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.models.Aluno;

@Entity
@Table(name = "alunos_sistemas")
public class AlunoSistemas extends Aluno{

	private static final long serialVersionUID = 1L;
}
