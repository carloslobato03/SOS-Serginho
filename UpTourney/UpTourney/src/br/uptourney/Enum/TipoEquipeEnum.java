package br.uptourney.Enum;

public enum TipoEquipeEnum {
	PRIVADA("Privada"), PUBLICA("Pública");

	TipoEquipeEnum(String tipo) {
		tipo = tipoEnum;
	}

	private String tipoEnum;

	public String getTipoEnum() {
		return tipoEnum;
	}
}
