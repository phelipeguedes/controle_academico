package br.com.fca.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;
import br.com.fca.models.Curso;

@WebServlet(name = "/MatriculaSistemasController", urlPatterns = { "/matricula_sistemas" })
public class MatriculaSistemasController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Curso curso = new Curso();
		Aluno aluno = new Aluno();

		aluno.setNome(request.getParameter("nome"));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setCidade(request.getParameter("cidade"));
		aluno.setBairro(request.getParameter("bairro"));
		aluno.setEndereco(request.getParameter("endereco"));
		aluno.setCep(request.getParameter("cep"));
		//int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));

		curso.setCodigo(4);
		aluno.setCurso(curso);
		aluno.setSemestre(request.getParameter("semestre"));
		aluno.setTurno(request.getParameter("turno"));
		aluno.setFinanciamento(request.getParameter("financiamento"));
		aluno.setTelefone(request.getParameter("telefone"));
		aluno.setEmail(request.getParameter("email"));
		aluno.setSenha(request.getParameter("senha"));

		AlunoDao.matricular(aluno);
		
		response.sendRedirect("alunosMatriculadosSistemas.jsp");
		
		//doGet(request, response);		
	}

}
