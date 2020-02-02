package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.ClienteBean;
import conexao.Conexao;

public class ClienteDao {
	
	// PODIA TA ROUBANDO.. MAS TO AQUI... PROGRAMANDO...
	
	// VALIDAR LOGIN DE CLIENTE
	public int validarLoginCliente(String nomeUsuario, String senha) {
			
			// CONTADOR DE VALIDAÇÃO
			int contador02 = 0;
					
			// OBTER CONEXÃO
			Connection conexao = Conexao.obterConexao();
					
			// TENTATIVA
			try {
				
				// COMANDO SQL
				String sql = "SELECT COUNT(*) FROM clientes WHERE nomeUsuario = ? AND senha = ?";
				
				// PRAPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				//PASSAR PARÂMETROS
				pstmt.setString(1, nomeUsuario);
				pstmt.setString(2, senha); 
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.last();
				
				// ATRIBUIR VALOR A VARIÁVEL DE VALIDAÇÃO
				contador02 = rs.getInt(1);
				
			}catch(Exception erro) {
				System.out.println("Falha ao validar cliente:"+erro.getMessage());
			}
			
			// RETORNO
			return contador02;
		}

	// OBTER DADOS DE CLIENTE 
	public ClienteBean obterDadosCliente(String nomeUsuario, String senha){
			
		// OBJETO ClienteBean
		ClienteBean clib = new ClienteBean();
			
		// ABRIR CONEXÃO
		Connection conexao = Conexao.obterConexao();
			
		// TENTATIVA
		try {
				
			// COMANDO SQL
			String sql = "SELECT * FROM clientes WHERE nomeUsuario = ? AND senha = ?";
				
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
				
			// PASSAR PARÂMETROS
			pstmt.setString(1, nomeUsuario);
			pstmt.setString(2, senha);
				
			//
			ResultSet rs = pstmt.executeQuery();
				
			//
			rs.last();
				
			// DEFINIR OS DADOS DO CLIENTE
			clib.setId(rs.getInt(1));
			clib.setNomeUsuario(rs.getString(2));
			clib.setSenha(rs.getString(3));
			clib.setNomeCompleto(rs.getString(4));
			clib.setIdade(rs.getInt(5));
			clib.setTelefone(rs.getString(6));
			clib.setEmail(rs.getString(7));
			clib.setEndereco(rs.getString(8));
			clib.setCpf(rs.getString(9));
			clib.setImagem(rs.getString(10));
				
			}catch(Exception erro) {
				System.out.println("Falha ao obter dados cliente:"+erro.getMessage());
			}
			
			// RETORNO
			return clib;
		}

	// OBTER DADOS DE CLIENTE BALA 
	public ClienteBean obterDadosClienteBALA(int idUsuario){
				
			// OBJETO ClienteBean
			ClienteBean clibBALA = new ClienteBean();
				
			// ABRIR CONEXÃO
			Connection conexao = Conexao.obterConexao();
				
			// TENTATIVA
			try {
					
				// COMANDO SQL
				String sql = "SELECT * FROM clientes WHERE id = ?";
					
				// PREPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
					
				// PASSAR PARÂMETROS
				pstmt.setInt(1, idUsuario);
				//
				ResultSet rs = pstmt.executeQuery();
					
				//
				rs.last();
					
				// DEFINIR OS DADOS DO CLIENTE
				clibBALA.setId(rs.getInt(1));
				clibBALA.setNomeUsuario(rs.getString(2));
				clibBALA.setSenha(rs.getString(3));
				clibBALA.setNomeCompleto(rs.getString(4));
				clibBALA.setIdade(rs.getInt(5));
				clibBALA.setTelefone(rs.getString(6));
				clibBALA.setEmail(rs.getString(7));
				clibBALA.setEndereco(rs.getString(8));
				clibBALA.setCpf(rs.getString(9));
				clibBALA.setImagem(rs.getString(10));
					
				}catch(Exception erro) {
					System.out.println("Falha ao obter dados cliente BALA:"+erro.getMessage());
				}
				
				// RETORNO
				return clibBALA;
			}
	
	// CADASTRAR CLIENTE
	public boolean cadastrarCliente(String nomeUsuario, String senha,
			String nomeCompleto, int idade, String telefone, String email,
			String endereco, String cpf, String imagem) {
			
			// VARIÁVEL DE VALIDAÇÃO
			boolean sucesso = false;
			
			// OBJETO DE CONEXÃO
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA 
			try {
				
				// COMANDO SQL
				String sql = "INSERT INTO clientes (nomeUsuario, senha, nomeCompleto, idade, telefone, email, endereco, cpf, imagem) VALUES (?,?,?,?,?,?,?,?,?)";
				
				// PREPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				// PASSAR PARÂMETROS
				pstmt.setString(1, nomeUsuario);
				pstmt.setString(2, senha);
				pstmt.setString(3, nomeCompleto);
				pstmt.setInt(4, idade);
				pstmt.setString(5, telefone);
				pstmt.setString(6, email);
				pstmt.setString(7, endereco);
				pstmt.setString(8, cpf);
				pstmt.setString(9, imagem);
				
				// EXECUTAR COMANDO SQL
				pstmt.execute();
				
				// FINALIZAR CONEXÕES
				pstmt.close();
				conexao.close();
				
				// ATRIBUIR VALOR A VARIÁVEL DE VALIDAÇÃO
				sucesso = true;
				
			}catch(Exception erroSQL) {
				System.out.println("Falha ao cadastrar Cliente:"+erroSQL.getMessage());
			}
			
			// RETORNO
			return sucesso;
		}

	// ALTERAR CLIENTE
	public boolean alterarCliente(ClienteBean obj) {
		
		// VARIÁVEL DE VALIDAÇÃO
		boolean sucesso = false;
		
		// CONEXÃO
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "UPDATE clientes SET nomeUsuario = ?, senha = ?, nomeCompleto = ?, idade = ?, telefone = ?, email = ?, endereco = ?, cpf = ?, imagem = ? WHERE id = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARâMETROS
			pstmt.setString(1, obj.getNomeUsuario());
			pstmt.setString(2, obj.getSenha());
			pstmt.setString(3, obj.getNomeCompleto());
			pstmt.setInt(4, obj.getIdade());
			pstmt.setString(5, obj.getTelefone());
			pstmt.setString(6, obj.getEmail());
			pstmt.setString(7, obj.getEndereco());
			pstmt.setString(8, obj.getCpf());
			pstmt.setString(9, obj.getImagem());
			pstmt.setInt(10, obj.getId());
			
			// EXECUTAR COMANDO
			pstmt.execute();
			
			// FECHAR CONEXÕES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARIÁVEL DE VALIDAÇÃO
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao alterar cliente"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}

	// EXCLUIR CLIENTE
	public boolean excluirCliente(int id) {
		
		// VARIÁVEL DE VALIDAÇÃO
		boolean sucesso = false;
		
		// CONEXÃO 
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "DELETE FROM clientes WHERE id = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PARÂMETROS
			pstmt.setInt(1, id);
			
			// EXECUTAR COMANDO
			pstmt.execute();
			
			// FECHAR CONEXÕES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARIÁVEL DE VALIDAÇÃO
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao excluir cliente"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
		
	}


}
