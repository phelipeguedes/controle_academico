package br.com.fca.disciplina;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.models.Disciplina;

@Entity
@Table(name = "disciplinas_sistemas")
public class DisciplinaSistemas extends Disciplina {

	private static final long serialVersionUID = 1L;

}
