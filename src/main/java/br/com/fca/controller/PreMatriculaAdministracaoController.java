package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaAdministracaoDao;
import br.com.fca.dao.PreMatriculaSistemasDao;
import br.com.fca.models.Curso;
import br.com.fca.pre_matricula.PreMatriculaAdministracao;
import br.com.fca.pre_matricula.PreMatriculaSistemas;

@WebServlet(name = "PreMatriculaAdministracaoController", urlPatterns = {"/pre_matricula_administracao"})
public class PreMatriculaAdministracaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreMatriculaAdministracaoController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<PreMatriculaAdministracao> pma = PreMatriculaAdministracaoDao.listarPreMatriculas();
		request.getSession().setAttribute("pma", pma);
		response.sendRedirect("preMatriculasAdministracaoRealizadas.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatriculaAdministracao pma = new PreMatriculaAdministracao();
		
		pma.setNome_aluno(request.getParameter("nome_aluno"));
		pma.setSexo(request.getParameter("sexo"));
		pma.setCep(request.getParameter("cep"));
		pma.setCidade(request.getParameter("cidade"));
		pma.setLogradouro(request.getParameter("logradouro"));
		
		Curso curso = new Curso();		
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		pma.setCurso(curso);
		
		pma.setTurno(request.getParameter("turno"));
		pma.setTelefone(request.getParameter("telefone"));
		pma.setEmail(request.getParameter("email"));
		
		PreMatriculaAdministracaoDao.matricular(pma);
		
		doGet(request, response);
	}

}
