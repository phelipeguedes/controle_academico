package br.com.fca.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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

		if (request.getMethod().equals("GET") && request.getParameter("matricula") != null) {
			int matricula = Integer.parseInt(request.getParameter("matricula"));
			aluno = alunoDao.getMatricula(matricula);
			HttpSession session = request.getSession();
			session.setAttribute("alunoPesquisado", aluno);

			RequestDispatcher rd = request.getRequestDispatcher("painelAlunoSecretaria.jsp");
			rd.forward(request, response);
		} else{
			aluno = null;
			HttpSession session = request.getSession();
			session.setAttribute("alunoPesquisado", aluno);
			
			RequestDispatcher rd = request.getRequestDispatcher("painelAlunoSecretaria.jsp");
			rd.forward(request, response);
		}

		// String cursoAjax = request.getParameter("cursoAjax");
		String semestreAjax = request.getParameter("semestreAjax");
		List<String> list = new ArrayList<String>();

		if (semestreAjax.equalsIgnoreCase("Primeiro")) {
			list.add("Algoritmos");
			list.add("Ingles Tecnico");
			list.add("Intro a Informatica");
			list.add("Fundamentos da Administracao");
			list.add("Lingua Portuguesa");
			list.add("Matematica Discreta");
		} else if (semestreAjax.equalsIgnoreCase("Segundo")) {
			list.add("Arquitetura de Computadores");
			list.add("Calculo Diferencial e Integral");
			list.add("Logica Matematica");
			list.add("Programacao Estruturada");
			list.add("Teoria Geral dos Sistemas");
		} else if (semestreAjax.equalsIgnoreCase("Terceiro")) {
			list.add("Algebra Linear");
			list.add("Estrutura de Dados");
			list.add("Probabilidade e Estatistica");
			list.add("Programacao Orientada a Objetos I");
			list.add("Sistemas Operacionais");
		} else if (semestreAjax.equalsIgnoreCase("Quarto")) {
			list.add("Banco de Dados I");
			list.add("Pesquisa Operacional");
			list.add("Programacao Orientada a Objetos II");
			list.add("Redes de Computadores I");
			list.add("Teoria da Computacao");
		} else if (semestreAjax.equalsIgnoreCase("Quinto")) {
			list.add("Analise de Algoritmos");
			list.add("Banco de Dados II");
			list.add("Desenvolvimento de Sistemas I");
			list.add("Programacao Orientada a Objetos III");
			list.add("Redes de Computadores II");
		} else if (semestreAjax.equalsIgnoreCase("Sexto")) {
			list.add("Desenvolvimento de Sistemas II");
			list.add("Economia de Empresas");
			list.add("Estagio Supervisionado");
			list.add("Engenharia de Software");
			list.add("Gestao em Tecnologia da Informacao");
			list.add("Psicologia Organizacional");
		} else if (semestreAjax.equalsIgnoreCase("Sétimo")) {
			list.add("Direito e Legislacao em Informatica");
			list.add("Gerencia de Projeto");
			list.add("Praticas Computacionais");
			list.add("Responsabilidade e Cidadania");
			list.add("Sistemas de Informacoes Gerenciais");
			list.add("Sistemas Distribuidos");
			list.add("Trabalho de Conclusao de Curso I");
		} else if (semestreAjax.equalsIgnoreCase("Oitavo")) {
			list.add("Computador e Sociedade");
			list.add("Disciplina Eletiva");
			list.add("Empreendedorismo");
			list.add("Interacao Humano-Computador");
			list.add("Seguranca e Auditoria de Sistemas");
			list.add("Trabalho de Conclusao de Curso II");
		}

		PrintWriter out = response.getWriter();

		for (String string : list) {
			out.println(string + ", ");
		}
	}

	@SuppressWarnings({})
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Curso curso = new Curso();
		Aluno aluno = new Aluno();

		aluno.setNome(request.getParameter("nome"));
		aluno.setSexo(request.getParameter("sexo"));
		aluno.setCidade(request.getParameter("cidade"));
		aluno.setBairro(request.getParameter("bairro"));
		aluno.setEndereco(request.getParameter("endereco"));
		aluno.setCep(request.getParameter("cep"));
		int codigoDoCurso = Integer.parseInt(request.getParameter("curso"));

		curso.setCodigo(codigoDoCurso);
		aluno.setCurso(curso);
		aluno.setSemestre(request.getParameter("semestre"));
		aluno.setTurno(request.getParameter("turno"));
		aluno.setFinanciamento(request.getParameter("financiamento"));
		aluno.setTelefone(request.getParameter("telefone"));
		aluno.setEmail(request.getParameter("email"));
		aluno.setSenha(request.getParameter("senha"));

		AlunoDao.matricular(aluno);

		if (request.getParameter("curso") != null && request.getParameter("curso").equals("1")) {

			curso.setCodigo(1);
			aluno.setCurso(curso);

			response.sendRedirect("alunosMatriculadosAdministracao.jsp");
		} else if (request.getParameter("curso") != null && request.getParameter("curso").equals("2")) {
			
			curso.setCodigo(2);
			aluno.setCurso(curso);

			response.sendRedirect("alunosMatriculadosContabeis.jsp");
		} else if (request.getParameter("curso") != null && request.getParameter("curso").equals("3")) {
			
			curso.setCodigo(3);
			aluno.setCurso(curso);

			response.sendRedirect("alunosMatriculadosRedes.jsp");
		} else if (request.getParameter("curso") != null || request.getParameter("curso").equals("4")) {
			
			curso.setCodigo(4);
			aluno.setCurso(curso);

			response.sendRedirect("alunosMatriculadosSistemas.jsp");
		}
	}
}
