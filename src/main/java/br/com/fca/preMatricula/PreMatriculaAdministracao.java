package br.com.fca.preMatricula;

import javax.persistence.Entity;
import javax.persistence.Table;

import br.com.fca.models.PreMatricula;

@Entity
@Table(name = "pre_matricula_administracao")
public class PreMatriculaAdministracao extends PreMatricula{

	private static final long serialVersionUID = 1L;

}
