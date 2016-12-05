package br.com.fca.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.fca.dao.PreMatriculaSistemasDao;
import br.com.fca.models.Curso;
import br.com.fca.pre_matricula.PreMatriculaSistemas;

@WebServlet(name = "PreMatriculaSistemasController", urlPatterns = {"/pre_matricula_sistemas"})
public class PreMatriculaSistemasController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PreMatriculaSistemasController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatriculaSistemasDao pmsDao = new PreMatriculaSistemasDao();
		List<PreMatriculaSistemas> pms = pmsDao.listarTudo();
		request.getSession().setAttribute("preMatriculasSistemas", pms);
		response.sendRedirect("preMatriculasSistemasRealizadas.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PreMatriculaSistemas pms = new PreMatriculaSistemas();
		
		pms.setNome_aluno(request.getParameter("nome_aluno"));
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
		
		PreMatriculaSistemasDao pmsDao = new PreMatriculaSistemasDao();
		pmsDao.salvar(pms);
		
		doGet(request, response);
	}

}
