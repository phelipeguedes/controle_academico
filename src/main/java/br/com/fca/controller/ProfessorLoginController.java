package br.com.fca.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.ProfessorSistemasDao;
import br.com.fca.dao.SecretariaDao;
import br.com.fca.models.Professor;
import br.com.fca.models.Secretaria;

@WebServlet(name = "/ProfessorLoginController", urlPatterns = {"/login_professor"})
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
		
		
		Professor professor = (Professor) request.getSession().getAttribute("professor");
		try {
			professor = ProfessorSistemasDao.autenticar(professor.getNomeDeUsuario(), professor.getSenha());
			
			if(professor != null){
				contexto.setAttribute("professorLogado", professor);
				response.sendRedirect("painelProfessor.jsp");
			} else {
				response.sendRedirect("loginErrado.jsp");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		
	}

}
