package projeto.estrutura;

public class ColunaVarchar extends Coluna{
	// ATRIBUTOS
	private Integer tamanho;
	
	
	// CONSTRUTOR
	public ColunaVarchar(String nome, Integer tamanho) {
		super(nome);
		this.tamanho = tamanho;
	}

	
	// GETTERS AND SETTERS
	public Integer getTamanho() {
		return tamanho;
	}
	public void setTamanho(Integer tamanho) {
		this.tamanho = tamanho;
	}
}
