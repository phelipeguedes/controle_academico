package br.com.fca.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaSistemasDao;
import br.com.fca.models.Curso;
import br.com.fca.preMatricula.PreMatriculaSistemas;

@WebServlet(name = "PreMatriculaSistemasController2", urlPatterns = {"/prematricula_sistemas_2"})
public class PreMatriculaSistemasController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PreMatriculaSistemasController2() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {

		PreMatriculaSistemas pms = new PreMatriculaSistemas();

		pms.setNomeAluno(request.getParameter("nome"));
		pms.setSexo(request.getParameter("sexo"));
		pms.setCep(request.getParameter("cep"));
		pms.setCidade(request.getParameter("cidade"));
		pms.setLogradouro(request.getParameter("logradouro"));

		Curso curso = new Curso();
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		curso.setCodigo(codigoDoCurso);
		pms.setCurso(curso);

		pms.setTurno(request.getParameter("turno"));
		pms.setTelefone(request.getParameter("telefone"));
		pms.setEmail(request.getParameter("email"));

		PreMatriculaSistemasDao.cadastrar(pms);

		response.sendRedirect("preMatriculaCadastradaComSucesso.jsp");
	}

}
