package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.DisciplinaDao;
import br.com.fca.dao.SecretariaDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Disciplina;
import br.com.fca.models.Professor;
import br.com.fca.models.Secretaria;

@WebServlet(name = "DisciplinaController", urlPatterns = {"disciplinas"})
public class DisciplinaController extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
	public DisciplinaController() {
	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	List<Disciplina> disciplinas = DisciplinaDao.listarDiscipinas();
    	request.getSession().setAttribute("disciplinas", disciplinas);
    	response.sendRedirect("disciplinasCadastradas.jsp");
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Disciplina disciplina = new Disciplina();
		
		disciplina.setNome(request.getParameter("nome"));
		disciplina.setCodigo(Integer.parseInt(request.getParameter("codigo")));
		Curso curso = new Curso();
		int codigoDoCurso = Integer.parseInt("curso");
		curso.setCodigo(codigoDoCurso);
		disciplina.setCurso(curso);
		Professor professor = new Professor();
		int codigoDoProfessor = Integer.parseInt(request.getParameter("docente"));
		professor.setId(codigoDoProfessor);
		disciplina.setProfessor(professor);
		disciplina.setSemestre(request.getParameter("semestre"));
		
		DisciplinaDao.cadastrarDisciplina(disciplina);
		
		doGet(request, response);
		
		
	}
}
