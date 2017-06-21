package br.uptourney.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import br.uptourney.dao.EquipeDao;
import br.uptourney.dao.TorneioDao;
import br.uptourney.model.Equipe;
import br.uptourney.model.Jogo;
import br.uptourney.model.Usuario;

/**
 * Servlet implementation class CadEquipeController
 */
@WebServlet("/CadEquipeController")
public class CadEquipeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private EquipeDao equipeDao = new EquipeDao();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadEquipeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("listJogo", new TorneioDao().listarJogos());
		request.setAttribute("listEquipe", equipeDao.listarEquipes());
		
		request.getRequestDispatcher("equipeform.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Equipe equipe = new Equipe();
		equipe.setJogo(new Jogo());
		
		equipe.setNomeEquipe(request.getParameter("nomeEquipe"));
		equipe.getJogo().setNomeJogo(request.getParameter("nomeJogo"));
		System.out.println(request.getSession().getAttribute("player"));
		Usuario usuario = (Usuario) request.getSession().getAttribute("player");
		equipe.setLider(usuario);
		 
		equipeDao.cadastrar(equipe, usuario);
		response.sendRedirect("equipe.jsp");		
	
		
	}

}
