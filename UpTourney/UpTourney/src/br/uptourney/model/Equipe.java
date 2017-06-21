package br.uptourney.model;

public class Equipe {

	private Long id;
	private String nomeEquipe;
	private Jogo jogo;
	private Usuario lider;	

public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
	public String getNomeEquipe() {
		return nomeEquipe;
	}
	public void setNomeEquipe(String nomeEquipe) {
		this.nomeEquipe = nomeEquipe;
	}
	
	public Usuario getLider() {
		return lider;
	}
	public void setLider(Usuario lider) {
		this.lider = lider;
	}
	
	public Jogo getJogo() {
		return jogo;
	}

	public void setJogo(Jogo jogo) {
		this.jogo = jogo;
	}
	
	
	
	
}
