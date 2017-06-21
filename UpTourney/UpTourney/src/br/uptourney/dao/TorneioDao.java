package br.uptourney.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import br.uptourney.model.Jogo;
import br.uptourney.model.Organizacao;
import br.uptourney.model.Torneio;
import br.uptourney.util.UpUtil;

public class TorneioDao {

	Connection conexao = UpUtil.getConnection();
	
	public boolean cadastrar(Torneio torneio){
		try {
			System.out.println("Começou o cadastro");
			PreparedStatement pstm = conexao.prepareStatement("insert into torneios (nome_torneio, id_organizacao, data_torneio, premiacao, qtd_equipes, regras, id_jogo) values (?,?,?,?,?,?,?)");
			System.out.println("ARMENGUE");
			PreparedStatement pstm2 = conexao.prepareStatement("select id_organizacao from organizacoes where id_organizacao = ?");
			System.out.println("PreparedStatement - 0");
			pstm2.setString(1, torneio.getOrganizacao().getNome());
			System.out.println(torneio.getOrganizacao().getNome());
			System.out.println("PreparedStatement - 1");
			ResultSet rs = pstm2.executeQuery();
			System.out.println("ResultSet");
			System.out.println("Tentou setar o ID");
			Long ids = null;
				System.out.println("O ids é:" + ids);
			while (rs.next()) {	
				ids = rs.getLong("id_organizacao");
			}
			
			System.out.println("O ids é:" + ids);
			rs.close();
			pstm2.close();
			
			System.out.println("A");
			pstm.setString(1, torneio.getNome());
			System.out.println("B");			
			pstm.setLong(2, ids);
			System.out.println("C");
			pstm.setDate(3, (java.sql.Date) torneio.getDataTorneio());
			System.out.println("D");
			pstm.setString(4, torneio.getPremiacao());
			System.out.println("E");
			pstm.setString(5, torneio.getQtd_equipes());
			System.out.println("F");
			pstm.setString(6, torneio.getRegras());
			System.out.println("G");
			PreparedStatement pstm3 = conexao.prepareStatement("select id_jogo from jogos where id_jogo = ?");
			pstm3.setString(1, torneio.getJogo().getNomeJogo());
			ResultSet rs2 = pstm3.executeQuery();
			Long idsJogo = null;
			while (rs2.next()) {	
				idsJogo = rs2.getLong("id_jogo");
			}
			pstm.setLong(7, idsJogo);
			System.out.println("H");
			pstm.execute();
			System.out.println("L");
			
			pstm.close();
			rs2.close();
			pstm3.close();
			System.out.println("M");
		} catch (SQLException e) {
			
			e.printStackTrace();
			System.out.println("DEU RUIM TORNEIO DAO CADASTRAR");
			return false;
		}
		return true;
	}
	
//	public List<String> listarOrganizacoes (){
	public List<Organizacao> listarOrganizacoes (){
		
//		List<String> listaNomesOrganizacao = new ArrayList<>();
		List<Organizacao> listaNomesOrganizacao = new ArrayList<>();
		
		String sql = "select * from organizacoes";
		System.out.println("ENTROU NO LIST");
		try {
			PreparedStatement pstm = conexao.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			System.out.println("executou a query");
			
			while (rs.next()) {
				Organizacao org = new Organizacao();
				org.setNome(rs.getString("nome_organizacao"));
				org.setId(rs.getLong("id_organizacao"));
				listaNomesOrganizacao.add(org);
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("deu pau!!");
		}
		
		for (Organizacao t : listaNomesOrganizacao) {
			System.out.println(t.getNome());
		}
		
		return listaNomesOrganizacao;
	}

	public List<Jogo> listarJogos() {

		List<Jogo> listaJogos = new ArrayList<>();
		
		String sql = "select * from jogos";
		System.out.println("ENTROU NO LIST - JOGO");
		try {
			PreparedStatement pstm = conexao.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			System.out.println("executou a query - jogo");			
			while (rs.next()) {
				Jogo game = new Jogo();
				game.setNomeJogo(rs.getString("nome_jogo"));
				game.setId(rs.getLong("id_jogo"));
				listaJogos.add(game);	
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("deu pau!! - jogo");
		}
		
		
		return listaJogos;
	}
}
