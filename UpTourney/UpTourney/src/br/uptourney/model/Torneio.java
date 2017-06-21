package br.uptourney.model;

import java.util.Date;

public class Torneio {

	private Long id;
	
	private String nome;
	
	private Organizacao organizacao;

	private Date dataTorneio;
	
	private String premiacao;
	
	private String qtd_equipes;
	
	private Jogo jogo;
	
	private String regras;
	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Date getDataTorneio() {
		return dataTorneio;
	}

	public void setDataTorneio(Date dataTorneio) {
		this.dataTorneio = dataTorneio;
	}

	public String getPremiacao() {
		return premiacao;
	}

	public void setPremiacao(String premiacao) {
		this.premiacao = premiacao;
	}

	public String getQtd_equipes() {
		return qtd_equipes;
	}

	public void setQtd_equipes(String qtdEquipe) {
		this.qtd_equipes = qtdEquipe;
	}

	public Organizacao getOrganizacao() {
		return organizacao;
	}

	public void setOrganizacao(Organizacao organizacao) {
		this.organizacao = organizacao;
	}

	public Jogo getJogo() {
		return jogo;
	}

	public void setJogo(Jogo jogo) {
		this.jogo = jogo;
	}

	public String getRegras() {
		return regras;
	}

	public void setRegras(String regras) {
		this.regras = regras;
	}
}
