package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.spi.DirStateFactory.Result;

import bean.CaminhaoBean;
import bean.FretadorBean;
import conexao.Conexao;

public class CaminhaoDao {

	// CADASTRAR CAMINHAO
	public boolean cadastrarCaminhao(int idUsuario, String placa, String modelo, String cor,
			String tamanho, String caracteristica, String imagem) {
		
		// VALIDA��O
		boolean sucesso = false;
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "INSERT INTO caminhoes (idUsuario, placa, modelo, cor, tamanho, caracteristica, imagem) VALUES (?,?,?,?,?,?,?)";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setInt(1, idUsuario);
			pstmt.setString(2, placa);
			pstmt.setString(3, modelo);
			pstmt.setString(4, cor);
			pstmt.setString(5, tamanho);
			pstmt.setString(6, caracteristica);
			pstmt.setString(7, imagem);
			
			// EXECUTAR COMANDO SQL
			pstmt.execute();
			
			// FECHAR CONEX�ES
			pstmt.close();
			conexao.close();
			
			// VALOR A VARI�VEL DE VALIDA��O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao cadastrar caminh�o:"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}
	
	// OBTER DADOS DO CAMINH�O
	public CaminhaoBean obterDadosCaminhao(int idUsuario) {
		
		// OBJETO DE RETORNO
		CaminhaoBean cambean = new CaminhaoBean();
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "SELECT * FROM caminhoes WHERE idUsuario = ?";
			
			// PREPARA ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METRO
			pstmt.setInt(1, idUsuario);
			
			//
			ResultSet rs = pstmt.executeQuery();
			
			// OBTER SOMENTE O �LTIMO
			rs.last();
			
			// OBTER DADOS DO CAMINHAO
			cambean.setIdUsuario(rs.getInt(1));
			cambean.setPlaca(rs.getString(2));
			cambean.setModelo(rs.getString(3));
			cambean.setCor(rs.getString(4));
			cambean.setTamanho(rs.getString(5));
			cambean.setCaracteristica(rs.getString(6));
			cambean.setImagem(rs.getString(7));
			
			// FINALIZAR AS CONEX�ES
			pstmt.close();
			conexao.close();
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao obter dados do caminhao: "+erroSQL.getMessage());
		}
		
		// RETORNO
		return cambean;
		
	}

	// EXCLUIR CAMINH�O
	public boolean excluirCaminhao(int idUsuario) {
		
		// VARI�VEL DE VALIDA��O
		boolean sucesso = false;
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "DELETE FROM caminhoes WHERE idUsuario = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setInt(1, idUsuario);
			
			// EXECUTAR COMANDO SQL
			pstmt.execute();
			
			// FECHAR CONEX�ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARI�VEL DE VALIDA��O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao excluir caminh�o: "+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
		
	}

	// ALTERAR CAMINH�O
	public boolean alterarCaminhao(CaminhaoBean obj) {
		
		// VARI�VEL DE VALIDA��O
		boolean sucesso = false;
		
		// ABRIR CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "UPDATE caminhoes SET placa = ?, cor = ?, tamanho = ?, caracteristica = ?, imagem = ? WHERE idUsuario = ?";
			
			// PREAPAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setString(1, obj.getPlaca());
			//pstmt.setString(2, obj.getModelo());
			pstmt.setString(2, obj.getCor());
			pstmt.setString(3, obj.getTamanho());
			pstmt.setString(4, obj.getCaracteristica());
			pstmt.setString(5, obj.getImagem());
			pstmt.setInt(6, obj.getIdUsuario());
			
			// EXECUTAR COMANDO
			pstmt.execute();
			
			// FINALIZAR CONEX�ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARI�VEL DE VALIDA��O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("falha ao alterar caminhao:"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}
	
}
