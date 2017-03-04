package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

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
		
		try {
			aluno = AlunoDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){
				HttpSession session = request.getSession();
				session.setAttribute("alunoLogado", aluno);
				request.getSession().setAttribute("nomeAlunoLogado", aluno.getNome());
				request.getRequestDispatcher("alunoOnline.jsp").forward(request, response);				
			} else {				
				request.setAttribute("alunoLogado", aluno);
				request.getRequestDispatcher("loginAluno.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
			response.sendRedirect("erro.jsp");
		}
		
	}

}
