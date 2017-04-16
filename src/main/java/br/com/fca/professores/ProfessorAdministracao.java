package br.com.fca.professores;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.models.Professor;

@Entity
@Table(name = "professores_administracao")
public class ProfessorAdministracao extends Professor {

	private static final long serialVersionUID = 1L;
}
