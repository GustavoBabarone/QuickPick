package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	// MÉTODO DE CONEXÃO
	public static Connection obterConexao() {
		
		// OBJETO DE CONXÃO
		Connection connection = null;
		
		// TENTATIVA
		try {
			
			// OBTENDO CONEXÃO DA BIBLIOTECA
			Class.forName("com.mysql.jdbc.Driver");
			
			// ABRINDO CONEXÃO COMO BANCO DE DADOS
			connection = DriverManager.getConnection("jdbc:mysql://localhost/quickpick","root","");
			
		}catch(Exception erro) {
			System.out.println("Falha ao se conectar:"+erro.getMessage());
		}
		
		// RETORNO
		return connection;
	}
}
