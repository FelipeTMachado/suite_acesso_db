package projeto.testes;

import java.sql.SQLException;

import projeto.conexao.FabricaConexaoMySQL;
import projeto.estrutura.ChaveEstrangeira;
import projeto.estrutura.ChavePrimaria;
import projeto.estrutura.Coluna;
import projeto.estrutura.ColunaDecimal;
import projeto.estrutura.ColunaFacade;
import projeto.estrutura.ColunaInt;
import projeto.estrutura.ColunaVarchar;
import projeto.estrutura.Esquema;
import projeto.estrutura.Tabela;
import projeto.gerenciador.Gerenciador;

public class Testes {
	public static void main(String[] args) {
		Gerenciador gerenciador = Gerenciador.getInstance();
		
		Esquema sistema = new Esquema("sistema");
		
		// TABELA ENDERECO
		Tabela endereco = new Tabela("endereco");
		
		Coluna idendereco = ColunaFacade.criarColunaInt("idendereco");
		Coluna logradouro = ColunaFacade.criarColunaVarchar("logradouro", 200);
		Coluna numero     = ColunaFacade.criarColunaVarchar("numero", 8);
		
		endereco.adicionarColuna(idendereco);
		endereco.adicionarColuna(logradouro);
		endereco.adicionarColuna(numero);
		
		ChavePrimaria chavePrimIdEndereco = new ChavePrimaria(idendereco);
		
		endereco.adicionarChavePrimaria(chavePrimIdEndereco);
		
		// TABELA PESSOA
		Tabela pessoa = new Tabela("pessoa");
		
		Coluna nome       = ColunaFacade.criarColunaVarchar("nome", 200);
		Coluna codigo     = ColunaFacade.criarColunaInt("idpessoa");
		Coluna salario    = ColunaFacade.criarColunaDecimal("salario", 5, 2);
		
		salario.setAutoIncrement(true);
		codigo.setNotNull(true);
		
		ChavePrimaria chaveCodigoPessoa = new ChavePrimaria("PK_Chave", codigo);
		ChaveEstrangeira chaveIdEndereco = new ChaveEstrangeira(idendereco, idendereco, endereco);
		
		pessoa.adicionarColuna(nome);
		pessoa.adicionarColuna(codigo);
		pessoa.adicionarColuna(salario);
		pessoa.adicionarColuna(idendereco);
		
		pessoa.adicionarChavePrimaria(chaveCodigoPessoa);
		pessoa.adicionarChaveEstrangeira(chaveIdEndereco);
		
		sistema.adicionarTabela(endereco);
		sistema.adicionarTabela(pessoa);
		
		try {
			gerenciador.setFabricaConexao(new FabricaConexaoMySQL("root", "315865", "127.0.0.1", 3306));
			gerenciador.conectar();
			
			System.out.println(gerenciador.gerarSQLTabela(endereco));
			System.out.println(gerenciador.gerarSQLTabela(pessoa));
			gerenciador.executarScript(sistema);		
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}
}
