package lipetech.sql;

import java.sql.Connection;
import java.util.ArrayList;

public class Tabela {
	private Campo primaryKey;
	private ArrayList<Campo> campos = new ArrayList<Campo>();
	
	
	public Tabela(Connection prConexao) {
		
	}
	
	public void setarCampo() {
		
	}


	// GETTERS AND SETTERS
	public ArrayList<Campo> getCampos() {
		return campos;
	}
	public void setCampos(ArrayList<Campo> campos) {
		this.campos = campos;
	}
}
