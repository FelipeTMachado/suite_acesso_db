package lipetech.sql;

import java.sql.Connection;
import java.sql.DriverManager;

public class GerenciadorSQL {
	// ATRIBUTOS CONFIGURACAO
	private Connection conexao;
	private String stringConexao;
	
	private String usuario = "root";
	private String senha = "";
	private String local = "localhost";
	private int porta = 3306;
	
	
	
	
	
	
	// COMPOSICAO DO CONSTRUTOR
	public GerenciadorSQL() {

	}
	
	
	
	
	// METODOS
	public void configuracoesPadrao() {
		this.usuario = "root";
		this.senha   = "";
		this.local   = "localhost";
		this.porta   = 3306;
	}
	
	public Connection iniciarConexao() {
		
		return conexao;
	}
	
	public boolean criarBancoDados() {
		
		return false;
	}
	
	public boolean descartarBancoDados() {
		return false;
	}
	
	
	
	// GETTERS AND SETTERS
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getLocal() {
		return local;
	}
	public void setLocal(String local) {
		this.local = local;
	}
	public int getPorta() {
		return porta;
	}
	public void setPorta(int porta) {
		this.porta = porta;
	}
}
