package br.uptourney.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.uptourney.dao.UsuarioDao;
import br.uptourney.model.Usuario;

/**
 * Servlet implementation class CadastroController
 */
@WebServlet("/CadastroController")
public class CadastroController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private UsuarioDao j = new UsuarioDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastroController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		String nome = request.getParameter("nome");
		String sobrenome = request.getParameter("sobrenome");
		String email = request.getParameter("email");
		String telefone = request.getParameter("telefone");
		
		Usuario player = new Usuario();
		
		player.setLogin(login);
		player.setSenha(senha);
		player.setNome(nome);
		player.setSobrenome(sobrenome);
		player.setEmail(email);
		player.setTelefone(telefone);
		
		j.cadastrar(player);
		HttpSession session = request.getSession();
		request.getSession().setAttribute("player", player);
		session.setAttribute("player", player);
		session.setMaxInactiveInterval(30*60);
		response.sendRedirect("pagesAdmin/indexJogador.jsp");
	}

}
