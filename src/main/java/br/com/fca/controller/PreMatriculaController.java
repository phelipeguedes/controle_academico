package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaDao;
import br.com.fca.models.Curso;
import br.com.fca.models.PreMatricula;

@WebServlet(name = "PreMatriculaController", urlPatterns = {"/pre_matricula"})
public class PreMatriculaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreMatriculaController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatricula pm = new PreMatricula();
		
		pm.setNomeAluno(request.getParameter("nome"));
		pm.setSexo(request.getParameter("sexo"));
		pm.setCep(request.getParameter("cep"));
		pm.setCidade(request.getParameter("cidade"));
		pm.setLogradouro(request.getParameter("logradouro"));
		
		pm.setTurno(request.getParameter("turno"));
		pm.setTelefone(request.getParameter("telefone"));
		pm.setEmail(request.getParameter("email"));
		
		
		Curso curso = new Curso();
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		pm.setCurso(curso);
		
		PreMatriculaDao.matricular(pm);
		response.sendRedirect("preMatriculaRealizadaComSucesso.jsp");
	}
	
}
