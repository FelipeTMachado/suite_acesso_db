package projeto.conexao;

import java.sql.Connection;
import java.sql.SQLException;

public interface FabricaConexao {
	public Connection conectar() throws SQLException;
	public boolean estaConectado() throws SQLException;
}
