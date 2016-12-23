package br.com.fca.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaAdministracaoDao;
import br.com.fca.dao.PreMatriculaRedesDao;
import br.com.fca.models.Curso;
import br.com.fca.preMatricula.PreMatriculaAdministracao;
import br.com.fca.preMatricula.PreMatriculaRedes;

@WebServlet(name = "PreMatriculaRedesController", urlPatterns = {"/pre_matricula_redes"})
public class PreMatriculaRedesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreMatriculaRedesController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		List<PreMatriculaAdministracao> pma = PreMatriculaAdministracaoDao.listarPreMatriculas();
		request.getSession().setAttribute("pma", pma);
		response.sendRedirect("preMatriculasAdministracaoRealizadas.jsp");
		*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatriculaRedes pmr = new PreMatriculaRedes();
		
		pmr.setNomeAluno(request.getParameter("nomeAluno"));
		pmr.setSexo(request.getParameter("sexo"));
		pmr.setCep(request.getParameter("cep"));
		pmr.setCidade(request.getParameter("cidade"));
		pmr.setLogradouro(request.getParameter("logradouro"));
		
		Curso curso = new Curso();		
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		pmr.setCurso(curso);
		
		pmr.setTurno(request.getParameter("turno"));
		pmr.setTelefone(request.getParameter("telefone"));
		pmr.setEmail(request.getParameter("email"));
		
		PreMatriculaRedesDao.matricular(pmr);
		
		//doGet(request, response);
		
		//RequestDispatcher rd = request.getRequestDispatcher("preMatriculasAdministracaoRealizadas.jsp");
		response.sendRedirect("preMatriculaRealizadaComSucesso.jsp");
		//rd.forward(request, response);
	}

}
