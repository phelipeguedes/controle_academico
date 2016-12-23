package br.com.fca.controller;

//@WebServlet(name = "/AlunoLoginController", urlPatterns = {"/aluno_ead"})
/*
public class AlunoEadController extends HttpServlet {
	
	private static final long serialVersionUID = 1L;    
	
    public AlunoEadController() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Aluno aluno = (Aluno) request.getSession().getAttribute("aluno");
		
		try {
			aluno = AlunoDao.autenticar(aluno.getEmail(), aluno.getSenha());
			if(aluno != null){
				request.setAttribute("alunoLogado", aluno.getNome());
				//contexto.setAttribute("alunoLogado", aluno);
				request.getSession().setAttribute("aluno", aluno);
				request.getRequestDispatcher("eadOnline.jsp").forward(request, response);
				//response.sendRedirect("aluno-online.jsp");
			} else{
				response.sendRedirect("eadOnline.jsp");
			}
		} catch (Exception e) {
			System.out.println("Erro: " + e.getMessage());
		}
	}

}*/
