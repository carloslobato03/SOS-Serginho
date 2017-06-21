package br.uptourney.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.uptourney.dao.OrganizacaoDao;
import br.uptourney.model.Organizacao;
import br.uptourney.model.Usuario;

/**
 * Servlet implementation class CadEquipeController
 */
@WebServlet("/CadOrganizacaoController")
public class CadOrganizacaoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private OrganizacaoDao organizacaoDao = new OrganizacaoDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadOrganizacaoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("organizacaoform.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Organizacao organizacao = new Organizacao();
		organizacao.setNome(request.getParameter("nomeOrganizacao"));
		organizacao.setContato(request.getParameter("contato"));		
//		System.out.println(request.getSession().getAttribute("player"));
		Usuario usuario = (Usuario) request.getSession().getAttribute("player");
		organizacao.setLiderOrg(usuario);
		 
		organizacaoDao.cadastrar(organizacao, usuario);
		response.sendRedirect("organizacao.jsp");		
	
		
	}

}
