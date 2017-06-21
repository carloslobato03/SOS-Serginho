package br.uptourney.model;

public class Organizacao {

	private Long id;
	private String nome;
	private String contato;
	private Usuario liderOrg;

	public Usuario getLiderOrg() {
		return liderOrg;
	}

	public void setLiderOrg(Usuario liderOrg) {
		this.liderOrg = liderOrg;
	}

	public Organizacao() {
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Organizacao(int i, String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
