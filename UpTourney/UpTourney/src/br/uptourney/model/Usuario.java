package br.uptourney.model;


public class Usuario{
	
	private Long id;
	
	private String login;

	private String senha;
	
	private String nome;
	
	private String sobrenome;

	private String email;
	
	private String telefone;
	
//	private Map<Jogo,String> nickList = new HashMap<Jogo,String>();
//	
//	private Set<Jogo> listaJogos = new HashSet<Jogo>();
//	
//	private Set<Equipe> listaEquipe = new HashSet<Equipe>();
	
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

	public String getSobrenome() {
		return sobrenome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}
	
	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
//	public Map<Jogo, String> getNickList() {
//		return nickList;
//	}
//
//	public void setNickList(Map<Jogo, String> nickList) {
//		this.nickList = nickList;
//	}
//
//	public Set<Jogo> getListaJogos() {
//		return listaJogos;
//	}
//
//	public void setListaJogos(Set<Jogo> listaJogos) {
//		this.listaJogos = listaJogos;
//	}
//
//	public Set<Equipe> getListaEquipe() {
//		return listaEquipe;
//	}
//
//	public void setListaEquipe(Set<Equipe> listaEquipe) {
//		this.listaEquipe = listaEquipe;
//	}
	
	
	
	
}
