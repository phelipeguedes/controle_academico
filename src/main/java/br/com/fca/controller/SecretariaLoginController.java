package br.com.fca.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import br.com.fca.dao.SecretariaDao;
import br.com.fca.models.Secretaria;

@WebServlet(name = "/SecretariaLoginController", urlPatterns = {"/login_secretaria"})
public class SecretariaLoginController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
    public SecretariaLoginController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Secretaria secretaria = (Secretaria) request.getSession().getAttribute("secretaria");
		
		try {
			secretaria = SecretariaDao.autenticar(secretaria.getNomeDeUsuario(), secretaria.getSenha());
			
			if(secretaria != null){
				request.getSession().setAttribute("secretariaLogada", secretaria);
				response.sendRedirect("painelSecretaria.jsp");				
			} else {
				request.getSession().setAttribute("secretariaLogada", secretaria);
				response.sendRedirect("home.jsp");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
			response.sendRedirect("erro.jsp");
		}
		
		
	}

}
