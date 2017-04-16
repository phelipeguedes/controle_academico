package br.com.fca.professores;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.models.Professor;

@Entity
@Table(name = "professores_contabeis")
public class ProfessorContabeis extends Professor{

	private static final long serialVersionUID = 1L;
}
