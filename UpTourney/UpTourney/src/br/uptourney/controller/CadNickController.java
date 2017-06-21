package br.uptourney.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.uptourney.dao.TorneioDao;
import br.uptourney.model.Jogo;
import br.uptourney.model.Nick;
import br.uptourney.model.Usuario;

/**
 * Servlet implementation class CadTorneioController
 */
@WebServlet("/CadNickController")
public class CadNickController extends HttpServlet {
 private static final long serialVersionUID = 1L;
       
 
 private TorneioDao tDao = new TorneioDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadNickController() {
        super();
        // TODO Auto-generated constructor stub
    }

 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
    @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     request.setAttribute("listJogo", tDao.listarJogos());

     request.getRequestDispatcher("nickform.jsp").forward(request, response);
 }

 /**
  * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  Nick nick = new Nick();
  nick.setJogo(new Jogo());

   nick.setNick(request.getParameter("nick"));
   nick.getJogo().setNomeJogo(request.getParameter("nomeJogo"));
   System.out.println(request.getSession().getAttribute("player"));
   Usuario usuario = (Usuario) request.getSession().getAttribute("player");
   nick.setUsuario(usuario);
   response.sendRedirect("pagesAdmin/indexJogador.jsp");   
  
 }
}