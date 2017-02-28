package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;

/**
 * Servlet implementation class AlunoLoginController
 */
@WebServlet(name = "/AlunoLoginController", urlPatterns = {"/loginAluno"})

public class AlunoLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlunoLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno =  (Aluno) request.getSession().getAttribute("aluno");
		//aluno.setEmail(request.getParameter("email"));
	    //aluno.setSenha(request.getParameter("senha"));
		
		try {
			aluno = AlunoDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){
				request.getSession().setAttribute("nomeAlunoLogado", aluno.getNome());
				HttpSession session = request.getSession();
				session.setAttribute("alunoLogado", aluno);
				RequestDispatcher rd = request.getRequestDispatcher("alunoOnline.jsp");
				rd.forward(request, response);
				//response.sendRedirect("alunoOnline.jsp");				
			} else {
				response.sendRedirect("loginAluno.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
			response.sendRedirect("erro.jsp");
		}
		
	}

}
