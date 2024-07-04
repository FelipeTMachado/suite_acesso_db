package projeto.estrutura;

public class Coluna extends ObjetoRelacional {
	// ATRIBUTOS
	private boolean notNull = false;
	private boolean autoIncrement = false;
	
	
	
	// CONTRUTOR
	public Coluna(String nome) {
		super(nome);
	}



	// GETTERS AND SETTERS
	public boolean isNotNull() {
		return notNull;
	}
	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}
	public boolean isAutoIncrement() {
		return autoIncrement;
	}
	public void setAutoIncrement(boolean autoIncrement) {
		this.autoIncrement = autoIncrement;
	}
}
