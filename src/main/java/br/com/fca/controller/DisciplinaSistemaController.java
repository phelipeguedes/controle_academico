package br.com.fca.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.DisciplinaSistemasDao;
import br.com.fca.disciplina.DisciplinaSistemas;
import br.com.fca.models.Curso;
import br.com.fca.models.Disciplina;
import br.com.fca.models.Professor;
import br.com.fca.professores.ProfessorSistemas;

@WebServlet(name = "DisciplinaSistemaController", urlPatterns = {"/disciplinas_sistemas"})
public class DisciplinaSistemaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public DisciplinaSistemaController() {
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	/*
		disciplinaDao = new 
    	List<Disciplina> disciplinas = DisciplinaDao.;
    	request.getSession().setAttribute("disciplinas", disciplinas);
    	response.sendRedirect("disciplinasCadastradas.jsp");
    	*/
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Disciplina disciplina = new DisciplinaSistemas(); 
		
		disciplina.setNome(request.getParameter("nome"));
		disciplina.setSigla(request.getParameter("sigla"));
		Curso curso = new Curso();
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		disciplina.setCurso(curso);
		Professor professorSistemas = new ProfessorSistemas();
		int codigoDoProfessor = Integer.parseInt(request.getParameter("professor"));
		professorSistemas.setId(codigoDoProfessor);
		disciplina.setProfessor(professorSistemas);
		disciplina.setSemestre(request.getParameter("semestre"));
		
		DisciplinaSistemasDao.cadastrarDisciplina(disciplina);
		
		request.setAttribute("disciplina", disciplina);
		
		RequestDispatcher rd = request.getRequestDispatcher("disciplinasSistemasCadastradas.jsp");
		rd.forward(request, response);
		
		doGet(request, response);
		
		
	}
}
