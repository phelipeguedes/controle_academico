package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fca.dao.ProfessorDao;
import br.com.fca.models.Curso;
import br.com.fca.models.Professor;

@WebServlet(name = "/ProfessorController", urlPatterns = { "/professores" })
public class ProfessorController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public ProfessorController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	@SuppressWarnings({ })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Professor professor = new Professor();
		
		professor.setNome(request.getParameter("nome"));
		professor.setSexo(request.getParameter("sexo"));
		professor.setCidade(request.getParameter("cidade"));
		professor.setBairro(request.getParameter("bairro"));
		professor.setEndereco(request.getParameter("endereço"));
		professor.setCep(request.getParameter("cep"));
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		Curso curso1 = new Curso();
		curso1.setCodigo(codigoDoCurso);
		professor.setCurso(curso1);
		professor.setTitulo(request.getParameter("titulo"));
		professor.setTurno(request.getParameter("turno"));
		professor.setTelefone(request.getParameter("telefone"));
		professor.setEmail(request.getParameter("email"));
		professor.setNomeDeUsuario(request.getParameter("nomeDeUsuario"));
		professor.setSenha(request.getParameter("senha"));

		ProfessorDao.cadastrarProfessor(professor);
		
		HttpSession session = request.getSession();
		session.setAttribute("professorCadastrado", professor);
		
		if(request.getParameter("curso") != null && request.getParameter("curso").equals("1")){
		
			codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
			Curso curso = new Curso();
			curso.setCodigo(1);
			professor.setCurso(curso);
			professor.setCurso(curso);
			
			RequestDispatcher rd = request.getRequestDispatcher("professoresAdministracaoCadastrados.jsp");
			rd.forward(request, response);
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals(2)){
				
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				curso.setCodigo(2);
				professor.setCurso(curso);
				professor.setCurso(curso);
				
				response.sendRedirect("professores.ContabeisCadastradados.jsp");
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals(3)){
				
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				curso.setCodigo(3);
				professor.setCurso(curso);
				professor.setCurso(curso);
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals("4")){
						
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				curso.setCodigo(4);
				professor.setCurso(curso);
				professor.setCurso(curso);		
				
				RequestDispatcher rd = request.getRequestDispatcher("professoresSistemasCadastrados.jsp");
				rd.forward(request, response);
				
				doGet(request, response);

	}
	}
}
