package projeto.estrutura;

public class ColunaDecimal extends Coluna {
	// ATRIBUTOS
	private Integer precisao = null;
	private Integer escala   = null;
	
	
	
	// CONSTRUTORES
	public ColunaDecimal(String nome) {
		super(nome);
	}
	
	public ColunaDecimal(String nome, Integer precisao, Integer escala) {
		super(nome);
		this.precisao = precisao;
		this.escala   = escala;
	}
	
	
	
	// GETTERS AND SETTERS
	public Integer getPrecisao() {
		return precisao;
	}
	public void setPrecisao(Integer precisao) {
		this.precisao = precisao;
	}
	public Integer getEscala() {
		return escala;
	}
	public void setEscala(Integer escala) {
		this.escala = escala;
	}
}
