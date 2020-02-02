package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import conexao.Conexao;

public class ConversaDao {

	// ENVIAR MENSAGEM
	public boolean enviarMsg(String nomeCliente, String nomeFretista, 
		String transmissor, String receptor, String conteudo, 
		String data, String hora) {
		
		// VARI�VEL DE VALIDA��O DE ENVIO
		boolean sucesso = false;
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "INSERT INTO conversas (cliente, fretador, transmissor, receptor, conteudo, data, hora) VALUES (?,?,?,?,?,?,?)";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setString(1, nomeCliente);
			pstmt.setString(2, nomeFretista);
			pstmt.setString(3, transmissor);
			pstmt.setString(4, receptor);
			pstmt.setString(5, conteudo);
			pstmt.setString(6, data);
			pstmt.setString(7, hora);
			
			// EXECUTAR COMANDO SQL
			pstmt.execute();
			
			// FECHAR CONEX�ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARI�VEL DE VALIDA��O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao enviar msg: "+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
		
	}
	
	// LISTAR MENSAGENS PARA TIPOS CLIENTES (1)
	public String selecionarMsgCliente(String nomeCliente, String nomeFretista, 
		String transmissor, String receptor) {
		
		// ESTRUTURA DA MSG
		String estrutura = "";
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL 
			String sql = "SELECT * FROM conversas WHERE cliente = ? AND fretador = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setString(1, nomeCliente);
			pstmt.setString(2, nomeFretista);
			
			// EXECUTAR COMANDO SQL
			ResultSet rs = pstmt.executeQuery();
			
			// LA�O DE REPETI��O
			while(rs.next()) {
				
				// CONDICIONAL 1
				if(rs.getString(2).equals(rs.getString(4))) {
				
					estrutura+= "<div class='row linhaConv'>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6'></div>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 dir'>"+rs.getString(6)+"</div>";
					estrutura+= "</div>";
					
				// CONDICIONAL 2
				}else if(rs.getString(3).equals(rs.getString(4))){
					
					estrutura+= "<div class='row linhaConv'>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 esq'>"+rs.getString(6)+"</div>";
					estrutura+= "</div>";
					
				}
					
			} // FIM DO LA�O
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao listar msg: "+erroSQL);
		}
		
		// RETORNO
		return estrutura;
		
	}
	
	// LISTAR MENSAGENS PARA TIPOS FRETISTAS (2)
	public String selecionarMsgFretistas(String nomeCliente, String nomeFretista, 
		String transmissor, String receptor) {
		
		// ESTRUTURA DA MSG
		String estrutura = "";
		
		// CONEX�O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL 
			String sql = "SELECT * FROM conversas WHERE cliente = ? AND fretador = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PAR�METROS
			pstmt.setString(1, nomeCliente);
			pstmt.setString(2, nomeFretista);
			
			// EXECUTAR COMANDO SQL
			ResultSet rs = pstmt.executeQuery();
			
			// LA�O DE REPETI��O
			while(rs.next()) {
				
				// CONDICIONAL 1
				if(rs.getString(3).equals(rs.getString(4))) {
				
					estrutura+= "<div class='row linhaConv'>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6'></div>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 dir'>"+rs.getString(6)+"</div>";
					estrutura+= "</div>";
					
				// CONDICIONAL 2
				}else if(rs.getString(2).equals(rs.getString(4))){
					
					estrutura+= "<div class='row linhaConv'>";
						estrutura+= "<div class='col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6 esq'>"+rs.getString(6)+"</div>";
					estrutura+= "</div>";
					
				}
					
			} // FIM DO LA�O
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao listar msg: "+erroSQL);
		}
		
		// RETORNO
		return estrutura;
		
	}
}
