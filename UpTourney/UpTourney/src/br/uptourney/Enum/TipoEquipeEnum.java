package br.uptourney.Enum;

public enum TipoEquipeEnum {
	PRIVADA("Privada"), PUBLICA("P�blica");

	TipoEquipeEnum(String tipo) {
		tipo = tipoEnum;
	}

	private String tipoEnum;

	public String getTipoEnum() {
		return tipoEnum;
	}
}
