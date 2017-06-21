package br.uptourney.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.uptourney.model.Organizacao;
import br.uptourney.model.Usuario;
import br.uptourney.util.UpUtil;

public class OrganizacaoDao {

	Connection conexao = UpUtil.getConnection();

	public boolean cadastrar(Organizacao organizacao, Usuario usuario) {
		try {
			System.out.println("Começou o cadastro");
			PreparedStatement pstm = conexao.prepareStatement("insert into organizacoes (nome_organizacao, contato, id_user_liderorg) values (?,?,?)");
			pstm.setString(1, organizacao.getNome());
			PreparedStatement pstm2 = conexao.prepareStatement("select id_usuario from usuarios where login = ? and senha = ?");
			pstm2.setString(1, usuario.getLogin());
			pstm2.setString(2, usuario.getSenha());

			ResultSet rs = pstm2.executeQuery();
			Long idsUser = null;
			while (rs.next()) {
				idsUser = rs.getLong("id_usuario");
			}
			
//			pstm2.execute();
			pstm.setString(2, organizacao.getContato());
			pstm.setLong(3, idsUser);
			pstm.execute();

			pstm.close();
			rs.close();
			pstm2.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}
}