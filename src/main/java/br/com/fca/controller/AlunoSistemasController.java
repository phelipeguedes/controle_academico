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

import br.com.fca.aluno.AlunoSistemas;
import br.com.fca.dao.AlunoSistemasDao;
import br.com.fca.models.Aluno;
import br.com.fca.models.Curso;
import br.com.fca.models.Mensalidade;

@WebServlet(name = "/AlunoSistemasController", urlPatterns = { "/aluno_sistemas" })
public class AlunoSistemasController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public AlunoSistemasController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Aluno aluno = new AlunoSistemas();
		AlunoSistemasDao adao = new AlunoSistemasDao();
		int matricula = Integer.valueOf(request.getParameter("matricula"));
		List<Aluno> alunos = adao.getListaSistemas();
		request.getSession().setAttribute("alunos", alunos);
		request.getRequestDispatcher("alunoSistemasMatriculados.jsp").forward(request, response);

	}

	@SuppressWarnings({"unchecked" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AlunoSistemas aluno = new AlunoSistemas();
		Mensalidade m = new Mensalidade();

		aluno.setNome(request.getParameter("nome"));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setCidade(request.getParameter("cidade"));
		aluno.setBairro(request.getParameter("bairro"));
		aluno.setEndereco(request.getParameter("endereço"));
		aluno.setCep(request.getParameter("cep"));
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));
		Curso curso = new Curso();
		curso.setCodigo(codigoDoCurso);
		aluno.setCurso(curso);
		aluno.setTurno(request.getParameter("turno"));
		aluno.setFinanciamento(request.getParameter("financiamento"));
		aluno.setTelefone(request.getParameter("telefone"));
		aluno.setEmail(request.getParameter("email"));
		aluno.setSenha(request.getParameter("senha"));
		
		aluno.setMensalidades((List<Mensalidade>) request.getAttribute(m.getValor()));
		
		AlunoSistemasDao.matricular(aluno);

		HttpSession session = request.getSession();
		session.setAttribute("aluno", aluno);

		RequestDispatcher rd = request.getRequestDispatcher("alunosMatriculadosSistemas.jsp");
		rd.forward(request, response);

		doGet(request, response);

	}

}
