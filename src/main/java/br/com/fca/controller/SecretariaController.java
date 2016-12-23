package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.SecretariaDao;
import br.com.fca.models.Secretaria;

@WebServlet(name = "/SecretariaController", urlPatterns = {"/secretarias"})
public class SecretariaController extends HttpServlet {
	  
	 
	private static final long serialVersionUID = 1L;
	
		public SecretariaController() {
		
		}
		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    	
			//SecretariaDao secretariaDao = new SecretariaDao();
	    	//List<Secretaria> secretarias = secretariaDao.getListaSecretarias();
	    	
	    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			Secretaria secretaria = new Secretaria();
		
			secretaria.setNome(request.getParameter("nome"));						
			secretaria.setCidade(request.getParameter("cidade"));
			secretaria.setBairro(request.getParameter("bairro"));
			secretaria.setEndereco(request.getParameter("endereco"));
			secretaria.setCep(request.getParameter("cep"));
			secretaria.setEscolaridade(request.getParameter("escolaridade"));
			secretaria.setExperiencia(request.getParameter("experiencia"));
			secretaria.setTurno(request.getParameter("turno"));
			secretaria.setTelefone(request.getParameter("telefone"));
			secretaria.setEmail(request.getParameter("email"));
			secretaria.setNomeDeUsuario(request.getParameter("nomeDeUsuario"));
			secretaria.setSenha(request.getParameter("senha"));
			
			SecretariaDao.cadastrarSecretaria(secretaria);
			
			//doGet(request, response);
			
			request.getSession().setAttribute("secretaria", secretaria);
	    	RequestDispatcher rd = request.getRequestDispatcher("secretariasCadastradas.jsp");
	    	rd.forward(request, response);
			
			/*
			try {
				BeanUtils.populate(secretaria, request.getParameterMap());
				SecretariaDao.cadastrarSecretaria(secretaria);
				doGet(request, response);
			} catch (Exception e) {
				doGet(request, response);
			}*/
		}
}
