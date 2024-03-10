package lipetech.sql;

import lipetech.sql.tipos.TipoCampo;

public class Campo {
	private TipoCampo tipo;
	private String nome;
	private boolean autoIncrement;
	private boolean notNull;
	private boolean foreingKey;
	
	
	
	
	// CONSTRUTOR
	public Campo(TipoCampo prTipo, String nome) {
		
	}
	
	
	
	
	// GETTERS AND SETTERS
	public TipoCampo getTipo() {
		return tipo;
	}
	public void setTipo(TipoCampo tipo) {
		this.tipo = tipo;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public boolean isAutoIncrement() {
		return autoIncrement;
	}
	public void setAutoIncrement(boolean autoIncrement) {
		this.autoIncrement = autoIncrement;
	}
	public boolean isNotNull() {
		return notNull;
	}
	public void setNotNull(boolean notNull) {
		this.notNull = notNull;
	}
	public boolean isForeingKey() {
		return foreingKey;
	}
	public void setForeingKey(boolean foreingKey) {
		this.foreingKey = foreingKey;
	}
}
