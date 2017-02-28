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
		
		//Coordenador cs = (Coordenador) request.getSession().getAttribute("coordenador_sistemas");
		Coordenador coordenador = new Coordenador();
		coordenador.setLogin(request.getParameter("login"));
		coordenador.setSenha(request.getParameter("senha"));
		CoordenadorDao coordenadorDao = new CoordenadorDao();
		
		try {			
			
			//cs = ((CoordenadorDao) csDao).autenticar(cs.getLogin(), cs.getSenha());
			coordenador = coordenadorDao.autenticar(coordenador.getLogin(), coordenador.getSenha()); 
			
			if(coordenador != null){
				request.setAttribute("coordenadorLogado", coordenador.getLogin());
				request.getRequestDispatcher("painelCoordenacaoSistemas.jsp").forward(request, response);
				//System.out.println(cs.getLogin());
				//System.out.println(cs.getSenha());
			} else {
				response.sendRedirect("loginCoordenador.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
		
		
		//doGet(request, response);
	}

}
