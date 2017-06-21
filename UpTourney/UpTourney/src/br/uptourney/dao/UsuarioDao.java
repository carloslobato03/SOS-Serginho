package br.uptourney.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.uptourney.model.Usuario;
import br.uptourney.util.UpUtil;

public class UsuarioDao {

	Connection conexao = UpUtil.getConnection();
	
	public boolean Autenticar (Usuario player){
		boolean autenticador = false;
		
		
		
		try {
			String sql = "select * from usuarios where login=? and senha=?";
			PreparedStatement pstm = conexao.prepareStatement(sql);
			pstm.setString(1, player.getLogin());
			pstm.setString(2, player.getSenha());
			ResultSet rs = pstm.executeQuery();
			
			if (rs.next()) {
				autenticador = true;
			}
			rs.close();
			pstm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return autenticador;
	}

	public void cadastrar(Usuario player){
		try {
			PreparedStatement stmt = conexao.prepareStatement("insert into usuarios (login,senha,nome, sobrenome, email, telefone) values (?,?,?,?,?,?)");
			
			
			stmt.setString(1, player.getLogin());
			stmt.setString(2, player.getSenha());
			stmt.setString(3, player.getNome());
			stmt.setString(4, player.getSobrenome());
			stmt.setString(5, player.getEmail());
			stmt.setString(6, player.getTelefone());
			
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}