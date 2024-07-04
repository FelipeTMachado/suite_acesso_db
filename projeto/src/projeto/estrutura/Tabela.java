package projeto.estrutura;

import java.util.ArrayList;

public class Tabela extends ObjetoRelacional {
	// ATRIBUTOS
	private ArrayList<Coluna>           colunas            = new ArrayList<Coluna>();
	private ArrayList<ChavePrimaria>    chavesPrimarias    = new ArrayList<ChavePrimaria>();
	private ArrayList<ChaveEstrangeira> chavesEstrangeiras = new ArrayList<ChaveEstrangeira>();
	
	
	
	// CONSTRUTOR
	public Tabela(String nome) {
		super(nome);
	}
	
	
	
	// METODOS FUNCIONAIS
	public void adicionarColuna(Coluna coluna) {
		colunas.add(coluna);
	}
	
	public Coluna buscarColuna(String nome) {
		for (Coluna coluna : colunas) {
			if (coluna.getNome().equals(nome)) {
				return coluna;
			}
		}
		
		return null;
	}
	
	public void adicionarChavePrimaria(ChavePrimaria chave) {
		chavesPrimarias.add(chave);
	}
	
	public void adicionarChaveEstrangeira(ChaveEstrangeira chave) {
		chavesEstrangeiras.add(chave);
	}
	
	// GETTERS AND SETTERS
	public ArrayList<Coluna> getColunas() {
		return colunas;
	}
	public void setColunas(ArrayList<Coluna> colunas) {
		this.colunas = colunas;
	}
	public ArrayList<ChavePrimaria> getChavesPrimarias() {
		return chavesPrimarias;
	}
	public void setChavesPrimarias(ArrayList<ChavePrimaria> chavesPrimarias) {
		this.chavesPrimarias = chavesPrimarias;
	}
	public ArrayList<ChaveEstrangeira> getChavesEstrangeiras() {
		return chavesEstrangeiras;
	}
	public void setChavesEstrangeiras(ArrayList<ChaveEstrangeira> chavesEstrangeiras) {
		this.chavesEstrangeiras = chavesEstrangeiras;
	}
}
