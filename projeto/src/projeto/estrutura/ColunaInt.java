package projeto.estrutura;

public class ColunaInt extends Coluna{
	// ATRIBUTOS
	private Integer larguraExibicao = null;
	
	
	
	// CONSTRUCTOR
	public ColunaInt(String nome) {
		super(nome);
	}

	public ColunaInt(String nome, Integer larguraExibicao) {
		super(nome);
		this.larguraExibicao = larguraExibicao;
	}
	
	// GETTERS AND SETTERS
	public Integer getLarguraExibicao() {
		return larguraExibicao;
	}
	public void setLarguraExibicao(Integer larguraExibicao) {
		this.larguraExibicao = larguraExibicao;
	}
}