package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.CoordenadorSistemasDao;
import br.com.fca.models.CoordenadorSistemas;

@WebServlet(name = "/CoordenadorLoginController", urlPatterns = {"/login_coordenador"})
public class CoordenadorLoginController extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    public CoordenadorLoginController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CoordenadorSistemas cs = (CoordenadorSistemas) request.getSession().getAttribute("coordenador_sistemas");
		CoordenadorSistemasDao csDao = new CoordenadorSistemasDao();
		
		try {			
			
			cs = csDao.autenticar(cs.getLogin(), cs.getSenha());
			
			if(cs != null){
				request.setAttribute("coordenadorLogado", cs);
				request.getRequestDispatcher("painelCoordenacaoSistemas.jsp").forward(request, response);
				System.out.println(cs.getLogin());
				System.out.println(cs.getSenha());
			} else {
				response.sendRedirect("loginErrado.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
		
		
		//doGet(request, response);
	}

}
