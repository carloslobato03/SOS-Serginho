package br.uptourney.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import br.uptourney.model.Jogo;
import br.uptourney.model.Nick;
import br.uptourney.util.UpUtil;

public class NickDao {

 Connection conexao = UpUtil.getConnection();

 public boolean cadastrar(Nick nick) {
  try {
   System.out.println("Começou o cadastro");
   PreparedStatement pstm = conexao
     .prepareStatement("insert into listanicks(nick, id_usuario, id_jogo) values (?,?,?)");
   System.out.println("ARMENGUE");
   PreparedStatement pstm2 = conexao.prepareStatement("select id_jogo from jogo where id_jogo = ?");
   pstm2.setString(1, nick.getJogo().getNomeJogo());
   ResultSet rs2 = pstm2.executeQuery();
   Long idsJogo = null;
   while (rs2.next()) {
    idsJogo = rs2.getLong("id_jogo");
   }
   rs2.close();
   pstm2.close();
   PreparedStatement pstm3 = conexao.prepareStatement("select id_usuario from usuario where id_usuario = ?");
   pstm3.setLong(1, nick.getUsuario().getId());
   ResultSet rs3 = pstm3.executeQuery();
   Long idsUsuarios = null;
   while (rs3.next()) {
    idsUsuarios = rs3.getLong("id_usuario");
   }
   rs3.close();
   pstm3.close();

   pstm.setString(1, nick.getNick());

   pstm.setLong(2, idsJogo);

   pstm.setLong(2, idsUsuarios);

   pstm.execute();

   pstm.close();
  } catch (SQLException e) {

   e.printStackTrace();
   return false;
  }
  return true;
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
  }

  return listaJogos;
 }
}