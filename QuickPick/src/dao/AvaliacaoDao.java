package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import conexao.Conexao;

public class AvaliacaoDao {

	// CADASTRAR AVALIA��O DO FRETADOR
	public boolean cadastrarAvaliacao(int classificacao, int idClie, int idFret) {
			
			// VARI�VEL DE VALIDA��O DE ENVIO
			boolean sucesso = false;
			
			// CONEX�O
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA
			try {
				
				// COMANDO SQL
				String sql = "INSERT INTO avaliacoesfret (classificacao, idCliente, idFretador) VALUES (?,?,?)";
				
				// PREPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				// PASSAR PAR�METROS
				pstmt.setInt(1, classificacao);
				pstmt.setInt(2, idClie);
				pstmt.setInt(3, idFret);
				
				// EXECUTAR COMANDO SQL
				pstmt.execute();
				
				// FECHAR CONEX�ES
				pstmt.close();
				conexao.close();
				
				// ATRIBUIR VALOR A VARI�VEL DE VALIDA��O
				sucesso = true;
				
			}catch(Exception erroSQL) {
				System.out.println("Falha ao avaliar : "+erroSQL.getMessage());
			}
			
			// RETORNO
			return sucesso;
			
		}
	
}
