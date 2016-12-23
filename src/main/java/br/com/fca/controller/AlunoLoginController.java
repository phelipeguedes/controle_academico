package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fca.aluno.IAlunoDao;
import br.com.fca.dao.AlunoSistemasDao;
import br.com.fca.models.Aluno;

@WebServlet(name = "/AlunoLoginController", urlPatterns = {"/login_aluno"})

public class AlunoLoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;    
	
    public AlunoLoginController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = (Aluno) request.getSession().getAttribute("aluno");
		
		try {
			aluno = AlunoSistemasDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){
				request.setAttribute("alunoLogado", aluno.getNome());
				//contexto.setAttribute("alunoLogado", aluno);
				//request.getSession().setAttribute("aluno", aluno);
				HttpSession session = request.getSession();
				session.setAttribute("aluno", aluno);
				request.getRequestDispatcher("alunoOnline.jsp").forward(request, response);
				//response.sendRedirect("aluno-online.jsp");
			} else{
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
			response.sendRedirect("Erro.jsp");
		}
	}

}
