package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;

@WebServlet(name = "/AlunoEadController", urlPatterns = {"/alunoEad"})

public class AlunoEadController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;    
	
    public AlunoEadController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = (Aluno) request.getSession().getAttribute("aluno");
		
		try {
			aluno = AlunoDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){								
				//request.getSession().setAttribute("alunoLogado", aluno);
				//request.getRequestDispatcher("eadOnline.jsp").forward(request, response);
				HttpSession session = request.getSession();
				session.setAttribute("alunoLogado", aluno);
				request.getRequestDispatcher("eadOnline.jsp").forward(request, response);
				//response.sendRedirect("eadOnline.jsp");
			} else{
				response.sendRedirect("ead.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

}
