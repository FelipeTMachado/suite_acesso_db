package projeto.estrutura;

public class ChaveEstrangeira {
	// ATRIBUTOS
	private Tabela tabelaDestino;
	private Coluna origem;
	private Coluna destino;
	
	
	
	// CONSTRUTOR
	public ChaveEstrangeira(Coluna origem, Coluna destino, Tabela tabelaDestino) {
		this.destino       = destino;
		this.origem        = origem;
		this.tabelaDestino = tabelaDestino;
	}
	
	
	
	// GETTERS AND SETTERS
	public Tabela getTabelaDestino() {
		return tabelaDestino;
	}
	public void setTabelaDestino(Tabela tabelaDestino) {
		this.tabelaDestino = tabelaDestino;
	}
	public Coluna getOrigem() {
		return origem;
	}
	public void setOrigem(Coluna origem) {
		this.origem = origem;
	}
	public Coluna getDestino() {
		return destino;
	}
	public void setDestino(Coluna destino) {
		this.destino = destino;
	}
}
