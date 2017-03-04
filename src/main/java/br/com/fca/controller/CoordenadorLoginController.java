package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.CoordenadorDao;
import br.com.fca.models.Coordenador;

@WebServlet(name = "/CoordenadorLoginController", urlPatterns = {"/loginCoordenador"})
public class CoordenadorLoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    public CoordenadorLoginController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Coordenador coordenador = new Coordenador();
		coordenador.setLogin(request.getParameter("login"));
		coordenador.setSenha(request.getParameter("senha"));
		CoordenadorDao coordenadorDao = new CoordenadorDao();
		
		try {			
			
			coordenador = coordenadorDao.autenticar(coordenador.getLogin(), coordenador.getSenha()); 
			
			if(coordenador != null){
				request.setAttribute("coordenadorLogado", coordenador.getLogin());
				request.getRequestDispatcher("painelCoordenacaoSistemas.jsp").forward(request, response);
			} else {
				request.setAttribute("coordenadorLogado", coordenador);
				request.getRequestDispatcher("loginCoordenador.jsp").forward(request, response);
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
		
		
		//doGet(request, response);
	}

}
