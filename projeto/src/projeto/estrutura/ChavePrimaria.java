package projeto.estrutura;

import java.util.ArrayList;

public class ChavePrimaria extends ObjetoRelacional {
	// ATRIBUTOS
	private ArrayList<Coluna> colunas = new ArrayList<Coluna>();
	
	
	
	// CONSTRUTORES 
	public ChavePrimaria(Coluna coluna) {
		super(coluna.getNome());
		this.colunas.add(coluna);
	}
	
	public ChavePrimaria(String nome, Coluna... colunas) {
		super(nome);
		for (Coluna coluna : colunas) {
			this.colunas.add(coluna);
		} 
	}
	
	
	public ArrayList<Coluna> getColunas() {
		return colunas;
	}
}
