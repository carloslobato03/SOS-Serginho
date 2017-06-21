package br.uptourney.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.uptourney.dao.TorneioDao;
import br.uptourney.model.Jogo;
import br.uptourney.model.Organizacao;
import br.uptourney.model.Torneio;

/**
 * Servlet implementation class CadTorneioController
 */
@WebServlet("/CadTorneioController")
public class CadTorneioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	private TorneioDao tDao = new TorneioDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadTorneioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setAttribute("list", tDao.listarOrganizacoes());
	    request.setAttribute("listJogo", tDao.listarJogos());

	    request.getRequestDispatcher("torneioform.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Torneio torneio = new Torneio();
		torneio.setOrganizacao(new Organizacao());
		torneio.setJogo(new Jogo());
		String dataTexto = request.getParameter("data");
		String erro = "";

			torneio.setNome(request.getParameter("nomeTorneio"));
			torneio.getOrganizacao().setNome(request.getParameter("nomeOrganizacao"));
			
			Date date = null;
			try {
				date = new SimpleDateFormat("dd/MM/yyyy").parse(dataTexto);
				java.sql.Date data = new java.sql.Date(date.getTime());
				torneio.setDataTorneio(data);
				System.out.println("Rodou a data de boas");
			} catch (ParseException e) {
				e.printStackTrace();
				System.out.println("Erro data - ");
				erro = "Erro Data!";
			}
			torneio.setQtd_equipes(request.getParameter("qtdEquipe"));
			torneio.getJogo().setNomeJogo(request.getParameter("nomeJogo"));
			torneio.setRegras(request.getParameter("regras"));
			torneio.setPremiacao("premiacao");
			
			boolean b = tDao.cadastrar(torneio);
			if(!b){
				erro = erro + "<br> Erro ao cadastrar!";
			}
			
			if(!erro.isEmpty()){
		    	request.setAttribute("erro", erro);
		    	request.setAttribute("list", tDao.listarOrganizacoes());
			    request.getRequestDispatcher("torneioform.jsp").forward(request, response);
			}
			
			System.out.println("10");
			response.sendRedirect("pagesAdmin/indexJogador.jsp");			
			System.out.println("11");
		
	}

}
