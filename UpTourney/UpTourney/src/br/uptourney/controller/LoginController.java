package br.uptourney.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.uptourney.dao.UsuarioDao;
import br.uptourney.model.Usuario;


@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	private UsuarioDao u = new UsuarioDao();
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5965215398032197965L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario player= new Usuario();
		
		String login = request.getParameter("login");
		String senha = request.getParameter("senha");
		
		player.setLogin(login);
		player.setSenha(senha);
		
		if(!u.Autenticar(player)){
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("erro", "Usuario e/ou senha incorretas.");
			rd.include(request, response);			
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("player", player);
			//setting session to expiry in 30 mins
			session.setMaxInactiveInterval(30*60);
			response.sendRedirect("pagesAdmin/indexJogador.jsp");
		}	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}

}
