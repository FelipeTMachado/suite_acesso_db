package projeto.conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FabricaConexaoMySQL implements FabricaConexao {
	// ATRIBUTOS
	private String     usuario = "root";
	private String     senha   = "";
	private String     local   = "localhost";
	private Integer    porta   = 3306; 
	private Connection conexao;
	
	
	// CONSTRUTORES
	public FabricaConexaoMySQL(String senha) {
		this.senha = senha;
	}
	
	public FabricaConexaoMySQL(String usuario, String senha) {
		this.usuario = usuario;
		this.senha = senha;
	}
	
	public FabricaConexaoMySQL(String usuario, String senha, String local, Integer porta) {
		this.local   = local;
		this.porta   = porta;
		this.usuario = usuario;
		this.senha   = senha;
	}
	
	
	// METODOS FUNCIONAIS
	@Override
	public Connection conectar() throws SQLException {
		String url = String.format("jdbc:mysql://%s:%s/?user=%s&password=%s", local, porta.toString(), usuario, senha);
		
		conexao = DriverManager.getConnection(url);
		return conexao;
	}
	
	@Override
	public boolean estaConectado() throws SQLException {
		if ((conexao == null) || (conexao.isClosed())) {
			return false;
		} else {
			return true;
		}
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
	public Integer getPorta() {
		return porta;
	}
	public void setPorta(Integer porta) {
		this.porta = porta;
	}
	public Connection getConexao() {
		return conexao;
	}
	public void setConexao(Connection conexao) {
		this.conexao = conexao;
	}
}
