package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.CoordenadorSistemasDao;
import br.com.fca.models.CoordenadorSistemas;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "/CoordenadorSistemasLoginController", urlPatterns = { "/login_coordenador_sistemas" })
public class CoordenadorSistemasLoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ServletContext contexto;
	
	public CoordenadorSistemasLoginController() {
		super();
	}
	
	public void init(ServletConfig config)throws ServletException{
		contexto = config.getServletContext();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		
		CoordenadorSistemas coordenadorSistemas = (CoordenadorSistemas) request.getSession().getAttribute("coordenador_sistemas");
		
		try {
			coordenadorSistemas = (CoordenadorSistemas) CoordenadorSistemasDao.autenticar(coordenadorSistemas.getLogin(), coordenadorSistemas.getSenha());
			
			if(coordenadorSistemas != null){
				contexto.setAttribute("coordenadorSistemasLogado", coordenadorSistemas);
				response.sendRedirect("painel-coordenacao-sistemas.jsp");
				//request.getRequestDispatcher("deu.jsp").forward(request, response);
			} else {
				response.sendRedirect("loginIncorreto.jsp");
			}
		} catch (Exception e) {
			response.sendRedirect(e.getMessage());
		}
	}

}
