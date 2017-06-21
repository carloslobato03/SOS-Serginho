package br.uptourney.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.uptourney.model.Equipe;
import br.uptourney.model.Jogo;
import br.uptourney.model.Usuario;
import br.uptourney.util.UpUtil;

public class EquipeDao {
Connection conexao = UpUtil.getConnection();
	
	
	public boolean cadastrar(Equipe equipe,Usuario usuario){
		try {
			PreparedStatement pstm = conexao.prepareStatement("insert into equipes (nome_equipe, id_jogo, id_user_lider) values (?,?,?)");			
			pstm.setString(1, equipe.getNomeEquipe());	
			PreparedStatement pstm3 = conexao.prepareStatement("select id_jogo from jogos where id_jogo = ?");
			PreparedStatement pstm4 = conexao.prepareStatement("select id_usuario from usuarios where login = ? and senha = ?");
			pstm4.setString(1, usuario.getLogin());
			pstm4.setString(2, usuario.getSenha());

			
			ResultSet rs3 = pstm4.executeQuery();
			Long idsUser = null;
			while (rs3.next()) {
				idsUser = rs3.getLong("id_usuario");
			}
			
			
			pstm3.setString(1, equipe.getJogo().getNomeJogo());
			ResultSet rs2 = pstm3.executeQuery();
			Long idsJogo = null;
			while (rs2.next()) {
				idsJogo = rs2.getLong("id_jogo");
			}
			pstm.setLong(2, idsJogo);
			pstm.setLong(3, idsUser);
			pstm.execute();
			
			pstm.close();
			rs2.close();
			pstm3.close();
		} catch (SQLException e) {			
			e.printStackTrace();
			return false;
		}
		return true;
	}

	
	public List<Equipe> listarEquipes() {
		List<Equipe> listaEquipe = new ArrayList<>();
		
		String sql = "select * from equipes";
		System.out.println("ENTROU NO LIST");
		try {
			PreparedStatement pstm = conexao.prepareStatement(sql);
			ResultSet rs = pstm.executeQuery();
			System.out.println("executou a query");
			
			while (rs.next()) {
				Equipe equipe = new Equipe();
				equipe.setNomeEquipe(rs.getString("nome_equipe"));
				equipe.setId(rs.getLong("id_equipe"));
				listaEquipe.add(equipe);
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("deu pau!!");
		}
		
		return listaEquipe;

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
