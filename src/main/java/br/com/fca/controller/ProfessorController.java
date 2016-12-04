package br.com.fca.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import br.com.fca.dao.ProfessorDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Professor;

@WebServlet(name = "/ProfessorController", urlPatterns = {"/professores"})
public class ProfessorController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ProfessorController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Professor> professores = ProfessorDao.listarProfessores();
		request.getSession().setAttribute("professores", professores);
		response.sendRedirect("professoresCadastrados.jsp");				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Professor professor = new Professor();
		
		professor.setNome(request.getParameter("nome"));
		professor.setSexo(request.getParameter("sexo"));
		professor.setCidade(request.getParameter("cidade"));
		professor.setBairro(request.getParameter("bairro"));
		professor.setEndereco(request.getParameter("endereco"));
		professor.setCep(request.getParameter("cep"));
		
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso")); //Integer.parseInt(request.getParameter("curso"));
		Curso curso = new Curso();
		curso.setCodigo(codigoDoCurso);
		professor.setCurso(curso);		
		
		professor.setTurno(request.getParameter("turno"));
		professor.setTitulo(request.getParameter("titulo"));
		professor.setTelefone(request.getParameter("telefone"));
		professor.setEmail(request.getParameter("email"));
		professor.setNomeDeUsuario(request.getParameter("nomeDeUsuario"));
		professor.setSenha(request.getParameter("senha"));
		
		ProfessorDao.cadastrarProfessor(professor);
		
		doGet(request, response);
		
		/*
		try {
			BeanUtils.populate(professor, request.getParameterMap());
			ProfessorDao.cadastrarProfessor(professor);
			doGet(request, response);
		} catch (IllegalAccessException | InvocationTargetException e) {
			doGet(request, response);
		}
		*/	
		
	}

}
