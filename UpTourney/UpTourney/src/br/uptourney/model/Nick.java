package br.uptourney.model;

public class Nick {
 
 private long id;
 private String nick;
 private Usuario usuario;
 private Jogo jogo;
 public long getId() {
  return id;
 }
 public void setId(long id) {
  this.id = id;
 }
 public String getNick() {
  return nick;
 }
 public void setNick(String nick) {
  this.nick = nick;
 }
 public Usuario getUsuario() {
  return usuario;
 }
 public void setUsuario(Usuario usuario) {
  this.usuario = usuario;
 }
 public Jogo getJogo() {
  return jogo;
 }
 public void setJogo(Jogo jogo) {
  this.jogo = jogo;
 }

}