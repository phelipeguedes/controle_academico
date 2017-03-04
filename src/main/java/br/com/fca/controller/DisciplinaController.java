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

import br.com.fca.dao.DisciplinaDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Disciplina;
import br.com.fca.models.Professor;
import br.com.fca.professores.ProfessorSistemas;

@WebServlet(name = "DisciplinaSistemaController", urlPatterns = {"/disciplinas"})
public class DisciplinaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public DisciplinaController() {
	
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
		
		Disciplina disciplina = new Disciplina(); 
		
		disciplina.setNome(request.getParameter("nome_disciplina"));
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
		
		DisciplinaDao.cadastrarDisciplina(disciplina);
		
		request.setAttribute("disciplina", disciplina);
		
		RequestDispatcher rd = request.getRequestDispatcher("disciplinasCadastradas.jsp");
		rd.forward(request, response);
		
		doGet(request, response);
		
		
	}
}
