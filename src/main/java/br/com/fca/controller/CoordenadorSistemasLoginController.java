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
		
		CoordenadorSistemas cs = (CoordenadorSistemas) request.getSession().getAttribute("coordenador_sistemas");
		CoordenadorSistemasDao csDao = new CoordenadorSistemasDao();
		
		try {
			cs = (CoordenadorSistemas) csDao.autenticar(cs.getLogin(), cs.getSenha());
			
			if(cs != null){
				contexto.setAttribute("coordenadorSistemasLogado", cs);
				response.sendRedirect("painelCoordenacaoSistemas.jsp");
				//request.getRequestDispatcher("deu.jsp").forward(request, response);
			} else {
				response.sendRedirect("loginIncorreto.jsp");
			}
		} catch (Exception e) {
			response.sendRedirect(e.getMessage());
		}
	}

}
