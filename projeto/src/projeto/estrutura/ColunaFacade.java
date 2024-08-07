package projeto.estrutura;

public class ColunaFacade {
	public static Coluna criarColunaVarchar(String nome, Integer tamanho) {
		
		return new ColunaVarchar(nome, tamanho);
	}
		
	public static Coluna criarColunaInt(String nome) {
		
		return new ColunaInt(nome);
	}
	
	public static Coluna criarColunaInt(String nome, Integer larguraExibicao) {
		
		return new ColunaInt(nome, larguraExibicao);
	}
	
	public static Coluna criarColunaDecimal(String nome) {
		
		return new ColunaDecimal(nome);
	}
	
	public static Coluna criarColunaDecimal(String nome, Integer precisao, Integer escala) {
		
		return new ColunaDecimal(nome, precisao, escala);
	}
}
