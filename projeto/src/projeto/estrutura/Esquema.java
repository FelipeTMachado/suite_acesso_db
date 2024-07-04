package projeto.estrutura;

import java.util.ArrayList;

public class Esquema extends ObjetoRelacional {
	// ATRIBUTOS
	private ArrayList<Tabela> tabelas = new ArrayList<Tabela>();
	
	
	
	// CONSTRUTOR
	public Esquema(String nome) {
		super(nome);
	}
	
	
	// METODOS FUNCIONAIS
	public void adicionarTabela(Tabela tabela) {
		tabelas.add(tabela);
	}
	
	public void gerarTabelaAssociativa() {
		
	}
	
	public Tabela buscarTabela(String nomeTabela) {
		for (Tabela tabela : tabelas) {
			if (tabela.getNome().equals(nomeTabela)) {
				return tabela;
			}
		}
		
		return null;
	}
	
	
	
	
	// GETTERS AND SETTERS
	public void setTabelas(ArrayList<Tabela> tabelas) {
		this.tabelas = tabelas;
	}
	public ArrayList<Tabela> getTabelas() {
		return tabelas;
	}
}
