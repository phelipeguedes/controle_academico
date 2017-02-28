package br.com.fca.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

@WebServlet(name = "JsonServlet", urlPatterns = {"/json"})
public class JsonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public JsonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String semestre = request.getParameter("semestre");
		List<String> listaDeDisciplinas = new ArrayList<String>();
		String json = null;
		
		if(semestre.equals("primeiro")){
			listaDeDisciplinas.add("Algoritmos");
			listaDeDisciplinas.add("Fundamentos da Administração");
			listaDeDisciplinas.add("Inglês Instrumental");
		}
		
		json = new Gson().toJson(listaDeDisciplinas);
		response.setContentType("application/json");
		response.getWriter().write(json);
	}

}
