package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	// M�TODO DE CONEX�O
	public static Connection obterConexao() {
		
		// OBJETO DE CONX�O
		Connection connection = null;
		
		// TENTATIVA
		try {
			
			// OBTENDO CONEX�O DA BIBLIOTECA
			Class.forName("com.mysql.jdbc.Driver");
			
			// ABRINDO CONEX�O COMO BANCO DE DADOS
			connection = DriverManager.getConnection("jdbc:mysql://localhost/quickpick","root","");
			
		}catch(Exception erro) {
			System.out.println("Falha ao se conectar:"+erro.getMessage());
		}
		
		// RETORNO
		return connection;
	}
}
