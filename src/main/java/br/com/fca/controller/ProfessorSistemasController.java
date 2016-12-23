package br.com.fca.controller;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;
import org.omg.CORBA.Request;

import br.com.fca.dao.ProfessorSistemasDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Professor;
import br.com.fca.professores.ProfessorSistemas;

@WebServlet(name = "/ProfessorSistemasController", urlPatterns = {"/professores_sistemas"})
public class ProfessorSistemasController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ProfessorSistemasController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		List<Professor> professores = ProfessorDao.getLista();
		request.getSession().setAttribute("professores", professores);
		response.sendRedirect("professoresCadastrados.jsp");
		*/				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Professor professorSistemas = new ProfessorSistemas();
		
		professorSistemas.setNome(request.getParameter("nome"));
		professorSistemas.setSexo(request.getParameter("sexo"));
		professorSistemas.setCidade(request.getParameter("cidade"));
		professorSistemas.setBairro(request.getParameter("bairro"));
		professorSistemas.setEndereco(request.getParameter("endereco"));
		professorSistemas.setCep(request.getParameter("cep"));
		
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso")); //Integer.parseInt(request.getParameter("curso"));
		Curso curso = new Curso();
		curso.setCodigo(codigoDoCurso);
		professorSistemas.setCurso(curso);		
		
		professorSistemas.setTurno(request.getParameter("turno"));
		professorSistemas.setTitulo(request.getParameter("titulo"));
		professorSistemas.setTelefone(request.getParameter("telefone"));
		professorSistemas.setEmail(request.getParameter("email"));
		professorSistemas.setNomeDeUsuario(request.getParameter("nomeDeUsuario"));
		professorSistemas.setSenha(request.getParameter("senha"));
		
		ProfessorSistemasDao.cadastrarProfessor(professorSistemas);
		
		HttpSession session = request.getSession();
		session.setAttribute("professor", professorSistemas);
		
		RequestDispatcher rd = request.getRequestDispatcher("professoresSistemasCadastrados.jsp");
		rd.forward(request, response);
		
		//doGet(request, response);
		
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
