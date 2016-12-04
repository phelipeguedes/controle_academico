package br.com.fca.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.AlunoDao;
import br.com.fca.models.Aluno;
import br.com.fca.models.Curso;

@WebServlet(name = "/AlunoController", urlPatterns = { "/alunos" })
public class AlunoController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public AlunoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Aluno> alunos = AlunoDao.listarAlunos();
		request.getSession().setAttribute("alunos", alunos);
		response.sendRedirect("alunosMatriculados.jsp");
	}

	@SuppressWarnings({ "static-access" })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();

		Aluno aluno = new Aluno();
		/*
		 * try { BeanUtils.populate(aluno, request.getParameterMap());
		 * AlunoDao.matricular(aluno);
		 * //response.sendRedirect("alunosMatriculados.jsp"); doGet(request,
		 * response); } catch (Exception e) {
		 * //response.sendRedirect("alunosMatriculados.jsp"); doGet(request,
		 * response); }
		 */

		aluno.setNome(request.getParameter("nome"));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setCidade(request.getParameter("cidade"));
		aluno.setBairro(request.getParameter("bairro"));
		aluno.setEndereco(request.getParameter("logradouro"));
		aluno.setCep(request.getParameter("cep"));
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso")); //Integer.parseInt(request.getParameter("curso"));
		Curso curso = new Curso();
		curso.setCodigo(codigoDoCurso);
		aluno.setCurso(curso);
		//request.setAttribute("curso", nomeDoCurso);  
		//aluno.setCurso((Curso) request.getAttribute("curso"));
		aluno.setTurno(request.getParameter("turno"));
		aluno.setFinanciamento(request.getParameter("financiamento"));
		aluno.setTelefone(request.getParameter("telefone"));
		aluno.setEmail(request.getParameter("email"));

		AlunoDao dao = new AlunoDao();

		dao.matricular(aluno);

		doGet(request, response);
		/*String dataEmTexto = request.getParameter("dataDeNascimento");
		Calendar dataDeNascimento = Calendar.getInstance();

		try {
			Date data = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataDeNascimento = Calendar.getInstance();
			dataDeNascimento.setTime(data);
		} catch (ParseException e) {
			System.out.println("Erro na conversão da data");
			return;
		}

		// Conversão da data

		/*
		 * try {
		 * 
		 * //String dia = dataNascimento.split("/")[0];
		 * 
		 * //nascimentoCalendar.set(Calendar.DAY_OF_MONTH,
		 * Integer.parseInt(dia));
		 * 
		 */

		
		
	}

}
