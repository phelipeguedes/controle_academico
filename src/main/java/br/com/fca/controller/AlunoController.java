package br.com.fca.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;
import br.com.fca.models.Curso;
import br.com.fca.models.Mensalidade;

@WebServlet(name = "/AlunoController", urlPatterns = { "/aluno" })
public class AlunoController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AlunoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Aluno aluno = new Aluno();
		AlunoDao alunoDao = new AlunoDao();
		//int matricula = Integer.valueOf(request.getParameter("matricula"));
		int matricula = Integer.parseInt(request.getParameter("matricula"));
		aluno = alunoDao.getMatricula(matricula);
		HttpSession session = request.getSession();
		session.setAttribute("alunoPesquisado", aluno);
		Mensalidade mensalidade = new Mensalidade();

		RequestDispatcher rd = request.getRequestDispatcher("painelAlunoSecretaria.jsp");
		rd.forward(request, response);
		
		//List<Aluno> alunos = adao.getListaSistemas();
		//request.getSession().setAttribute("alunos", alunos);
		//request.getRequestDispatcher("alunoSistemasMatriculados.jsp").forward(request, response);

	}

	@SuppressWarnings({ })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Aluno aluno = new Aluno();
		
		aluno.setNome(request.getParameter("nome"));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setCidade(request.getParameter("cidade"));
		aluno.setBairro(request.getParameter("bairro"));
		aluno.setEndereco(request.getParameter("endereco"));
		aluno.setCep(request.getParameter("cep"));
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		Curso curso1 = new Curso();
		curso1.setCodigo(codigoDoCurso);
		aluno.setCurso(curso1);
		aluno.setSemestre(request.getParameter("semestre"));
		aluno.setTurno(request.getParameter("turno"));
		aluno.setFinanciamento(request.getParameter("financiamento"));
		aluno.setTelefone(request.getParameter("telefone"));
		aluno.setEmail(request.getParameter("email"));
		aluno.setSenha(request.getParameter("senha"));

		AlunoDao.matricular(aluno);

		
		if(request.getParameter("curso") != null && request.getParameter("curso").equals("1")){
		
			codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
			Curso curso = new Curso();
			//curso.setCodigo(codigoDoCurso);
			curso.setCodigo(1);
			aluno.setCurso(curso);
			aluno.setCurso(curso);
			
			response.sendRedirect("alunosMatriculadosAdministracao.jsp");
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals("2")){
				
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				//curso.setCodigo(codigoDoCurso);
				curso.setCodigo(2);
				aluno.setCurso(curso);
				aluno.setCurso(curso);
				
				response.sendRedirect("alunosMatriculadosContabeis.jsp");
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals("3")){
				
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				//curso.setCodigo(codigoDoCurso);
				curso.setCodigo(3);
				aluno.setCurso(curso);
				aluno.setCurso(curso);
				
				response.sendRedirect("alunosMatriculadosRedes.jsp");
		} else if (
				request.getParameter("curso") != null && request.getParameter("curso").equals("4")){
						
				codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
				Curso curso = new Curso();
				//curso.setCodigo(codigoDoCurso);
				curso.setCodigo(4);
				aluno.setCurso(curso);
				aluno.setCurso(curso);		
				
				response.sendRedirect("alunosMatriculadosSistemas");
		
		HttpSession session = request.getSession();
		session.setAttribute("alunoAdm", aluno);

		RequestDispatcher rd = request.getRequestDispatcher("alunosMatriculados.jsp");
		rd.forward(request, response);

		doGet(request, response);

	}
	}
}
