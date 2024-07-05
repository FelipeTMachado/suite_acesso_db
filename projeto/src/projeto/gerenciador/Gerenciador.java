package projeto.gerenciador;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import projeto.conexao.FabricaConexao;
import projeto.estrutura.ChaveEstrangeira;
import projeto.estrutura.ChavePrimaria;
import projeto.estrutura.Coluna;
import projeto.estrutura.ColunaDecimal;
import projeto.estrutura.ColunaFacade;
import projeto.estrutura.ColunaInt;
import projeto.estrutura.ColunaVarchar;
import projeto.estrutura.Esquema;
import projeto.estrutura.Tabela;

public class Gerenciador {
	// ATRIBUTOS
	private static Gerenciador instance;
	private ArrayList<Esquema> esquemas = new ArrayList<Esquema>();
	private FabricaConexao fabricaConexao;
	private Connection conexao;
	private boolean conectado;
	
	
	private Gerenciador() {
		
	}
	
	// CONSTRUTOR
	public static Gerenciador getInstance() {
		if (instance == null) {
			instance = new Gerenciador();
		}
		
		return instance;
	}
	
	
	// METODOS FUNCIONAIS
	public Esquema novoEsquema(String nome) {
		Esquema esquema = new Esquema(nome);
		esquemas.add(esquema);
		
		return esquema;
	}
	
	
	public Esquema buscarEsquema(String nome) {
		for (Esquema esquema : esquemas) {
			if (esquema.getNome().equals(nome)) {
				return esquema;
			}
		}
		
		return null;
	}

	
	public boolean conectar() throws SQLException {
		conexao = fabricaConexao.conectar();
		setConectado(fabricaConexao.estaConectado());
		
		if (isConectado()) {
			return true;
		} else {
			return false;
		}
	}

	public String gerarScriptSQL(Esquema esquema) {
		String sql = "CREATE DATABASE " + esquema.getNome() + ";\n\n";
		
		sql += "USE DATABASE " + esquema.getNome() + ";\n\n";
		
		for (Tabela tabela : esquema.getTabelas()) {
			sql += gerarSQLTabela(tabela) + "\n\n";
		}
		
		return sql;
	}
	
	public boolean executarScript(Esquema esquema) throws SQLException {
		Statement st = conexao.createStatement();
		
		String sql = "CREATE DATABASE " + esquema.getNome();
		
		st.execute("DROP DATABASE IF EXISTS " + esquema.getNome());
		st.execute(sql);
		st.execute("USE " + esquema.getNome());
		
		for (Tabela tabela : esquema.getTabelas()) {
			sql = gerarSQLTabela(tabela);
			st.execute(sql);
		}
		
		return true;
	}
	
	private String gerarSQLTabela(Tabela tabela) {
		String sql = "";
		
		sql += "CREATE TABLE " + tabela.getNome() + "(\n";
		
		int indice = 0;
		for (Coluna coluna : tabela.getColunas()) {
			sql += gerarSQLColuna(coluna);
		
			indice ++;
			
			if (!(indice == tabela.getColunas().size())) {
				sql += ",\n";
			}
		}
		
		
		
		indice = 0;
		for (ChavePrimaria chave : tabela.getChavesPrimarias()) {
			if (indice == 0) {
				sql += ",\n\n";
			}
			
			sql += gerarChavePrimaria(chave);
			
			indice ++;
			
			if (!(indice == tabela.getChavesPrimarias().size())) {
				sql += ",\n";
			}
		}
		
		indice = 0;
		for (ChaveEstrangeira chave : tabela.getChavesEstrangeiras()) {
			if (indice == 0) {
				sql += ",\n\n";
			}
			
			sql += gerarChavesEstrangeira(chave);
			
			indice ++;
			
			if (!(indice == tabela.getChavesEstrangeiras().size())) {
				sql += ",\n";
			}
		}
		
		
		
		return sql += "\n);";
	}
	
	private String gerarChavesEstrangeira(ChaveEstrangeira chave) {
		String sql = "    FOREIGN KEY (" 
				+ chave.getOrigem().getNome() + ")" 
				+ " REFERENCES " 
				+ chave.getTabelaDestino().getNome() + "(" + chave.getDestino().getNome() + ")";
		
		return sql;
	}
	
	private String gerarChavePrimaria(ChavePrimaria chave) {
		String sql = "";
		
		if (chave.getColunas().size() == 1) {
			sql += "    PRIMARY KEY ("+ chave.getColunas().get(0).getNome() +")";
			
		} else {
			sql += "    CONSTRAINT " + chave.getNome() + " PRIMARY KEY (";
			
			int indice = 0;
			
			for (Coluna coluna : chave.getColunas()) {
				 sql += coluna.getNome();
				 
				 indice ++;
				 
				 if (!(indice == chave.getColunas().size())) {
					 sql += ", ";
				 } else {
					 sql += ")";
				 }
			}
		}
		
		return sql;
	}
	
	private String gerarSQLColuna(Coluna coluna) {
		String sql = "    " + coluna.getNome() + " ";
		
		if (coluna instanceof ColunaVarchar) {
			ColunaVarchar col = (ColunaVarchar) coluna;
			
			sql += "VARCHAR (" + col.getTamanho().toString() + ")";
		}
		
		// OPCOES PARA INT
		if (coluna instanceof ColunaInt) {
			ColunaInt col = (ColunaInt) coluna;
			
			sql += "INT";
			
			if (!(col.getLarguraExibicao() == null)) {
				sql += "INT (" + col.getLarguraExibicao().toString() + ")";
			}
			
			if (coluna.isAutoIncrement()) {
				sql += " AUTO_INCREMENT";
			}
		}
		
		
		// OPCOES PARA DECIMAL
		if (coluna instanceof ColunaDecimal) {
			ColunaDecimal col = (ColunaDecimal) coluna;
			
			sql += "DECIMAL";
			if (!((col.getEscala() == null) && (col.getPrecisao() == null))) {
				sql += "(" + col.getPrecisao() + "," + col.getEscala() + ")"; 
			}
		}
		
		
		
		if (coluna.isNotNull()) {
			sql += " NOT NULL";
		}
		
		return sql;
	}
	
	public Tabela gerarTabelaAssociativa(Tabela tabela_1, Tabela tabela_2) {
		Tabela tabela = new Tabela(tabela_1.getNome() + "_" +  tabela_2.getNome());
		
		Coluna coluna_1 = ColunaFacade.criarColunaInt(tabela_1.getChavesPrimarias().get(0).getColunas().get(0).getNome());
		Coluna coluna_2 = ColunaFacade.criarColunaInt(tabela_2.getChavesPrimarias().get(0).getColunas().get(0).getNome());
		
		tabela.adicionarColuna(coluna_1);
		tabela.adicionarColuna(coluna_2);
		
		tabela.adicionarChavePrimaria(new ChavePrimaria("pk_composta", coluna_1, coluna_2));
		tabela.adicionarChaveEstrangeira(new ChaveEstrangeira(coluna_1, coluna_1, tabela_1));
		tabela.adicionarChaveEstrangeira(new ChaveEstrangeira(coluna_2, coluna_2, tabela_2));
		
		return tabela;
	}

	// GETTERS AND SETTERS
	public ArrayList<Esquema> getEsquemas() {
		return esquemas;
	}
	public void setEsquemas(ArrayList<Esquema> esquemas) {
		this.esquemas = esquemas;
	}
	public FabricaConexao getFabricaConexao() {
		return fabricaConexao;
	}
	public void setFabricaConexao(FabricaConexao fabricaConexao) {
		this.fabricaConexao = fabricaConexao;
	}
	public Connection getConexao() {
		return conexao;
	}
	public void setConexao(Connection conexao) {
		this.conexao = conexao;
	}
	public boolean isConectado() {
		return conectado;
	}
	public void setConectado(boolean conectado) {
		this.conectado = conectado;
	}
}
