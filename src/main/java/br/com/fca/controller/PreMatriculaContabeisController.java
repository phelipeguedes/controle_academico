package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaAdministracaoDao;
import br.com.fca.dao.PreMatriculaContabeisDao;
import br.com.fca.dao.PreMatriculaSistemasDao;
import br.com.fca.models.Curso;
import br.com.fca.preMatricula.PreMatriculaAdministracao;
import br.com.fca.preMatricula.PreMatriculaContabeis;
import br.com.fca.preMatricula.PreMatriculaSistemas;

@WebServlet(name = "PreMatriculaContabeisController", urlPatterns = {"/pre_matricula_contabeis"})
public class PreMatriculaContabeisController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreMatriculaContabeisController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		List<PreMatriculaAdministracao> pma = PreMatriculaAdministracaoDao.listarPreMatriculas();
		request.getSession().setAttribute("pma", pma);
		response.sendRedirect("preMatriculasAdministracaoRealizadas.jsp");
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatriculaContabeis pmc = new PreMatriculaContabeis();
		
		pmc.setNomeAluno(request.getParameter("nome"));
		pmc.setSexo(request.getParameter("sexo"));
		pmc.setCep(request.getParameter("cep"));
		pmc.setCidade(request.getParameter("cidade"));
		pmc.setLogradouro(request.getParameter("logradouro"));
		
		Curso curso = new Curso();		
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		pmc.setCurso(curso);
		
		pmc.setTurno(request.getParameter("turno"));
		pmc.setTelefone(request.getParameter("telefone"));
		pmc.setEmail(request.getParameter("email"));
		
		PreMatriculaContabeisDao.matricular(pmc);
		
		//doGet(request, response);
		
		//RequestDispatcher rd = request.getRequestDispatcher("preMatriculasAdministracaoRealizadas.jsp");
		response.sendRedirect("preMatriculaRealizadaComSucesso.jsp");
		//rd.forward(request, response);
	}

}
