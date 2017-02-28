package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.ProfessorDao;
import br.com.fca.models.Professor;

@WebServlet(name = "/ProfessorLoginController", urlPatterns = {"/loginProfessor"})
public class ProfessorLoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
    
	private ServletContext contexto;
	
    public ProfessorLoginController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		//Professor professor = (Professor) request.getSession().getAttribute("professor");
		Professor professor = new Professor();
		professor.setNomeDeUsuario(request.getParameter("nomeDeUsuario"));
		professor.setSenha(request.getParameter("senha"));		
		
		try {
			//professor = ProfessorDao.autenticar(professor.getNomeDeUsuario(), professor.getSenha());
			professor = ProfessorDao.autenticar(professor.getNomeDeUsuario(), professor.getSenha());
			if(professor != null){
				//contexto.setAttribute("professorLogado", professor.getNome());
				request.getSession().setAttribute("professorLogado", professor.getNome());
				response.sendRedirect("painelProfessor.jsp");
			} else {
				response.sendRedirect("loginProfessor.jsp");
			}
		} catch (Exception e) {
			System.out.println("Ocorreu um erro: " + e.getMessage());
		}
		
	}

}
