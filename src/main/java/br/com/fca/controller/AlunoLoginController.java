package br.com.fca.controller;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;

@WebServlet(name = "/AlunoLoginController", urlPatterns = {"/login_aluno"})

public class AlunoLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private ServletContext contexto;
	
    public AlunoLoginController() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
		contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = (Aluno) request.getSession().getAttribute("aluno");
		
		try {
			aluno = AlunoDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){
				contexto.setAttribute("alunoLogado", aluno);
				//request.getRequestDispatcher("aluno-online.jsp").forward(request, response);;
				response.sendRedirect("aluno-online.jsp");
			} else{
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

}
