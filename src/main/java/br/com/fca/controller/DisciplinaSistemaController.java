package br.com.fca.controller;

import java.io.IOException;
import java.io.Serializable;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.DisciplinaDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Disciplina;
import br.com.fca.models.Professor;

@WebServlet(name = "DisciplinaSistemaController", urlPatterns = {"/disciplinas_sistemas"})
public class DisciplinaSistemaController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public DisciplinaSistemaController() {
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	List<Disciplina> disciplinas = DisciplinaDao.listarDisciplinas();
    	request.getSession().setAttribute("disciplinas", disciplinas);
    	response.sendRedirect("disciplinasCadastradas.jsp");
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Disciplina disciplina = new Disciplina();
		
		disciplina.setNome(request.getParameter("nome"));
		disciplina.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		Curso curso = new Curso();
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		disciplina.setCurso(curso);
		Professor professor = new Professor();
		int codigoDoProfessor = Integer.parseInt(request.getParameter("professor"));
		professor.setId(codigoDoProfessor);
		disciplina.setProfessor(professor);
		disciplina.setSemestre(request.getParameter("semestre"));
		
		DisciplinaDao.cadastrarDisciplina(disciplina);
		
		doGet(request, response);
		
		
	}
}
