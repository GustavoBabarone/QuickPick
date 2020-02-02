package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.FretadorBean;
import conexao.Conexao;

public class FretadorDao {
	
	// VALIDAR LOGIN DE FRETADOR
	public int validarLoginFretista(String nomeUsuario, String senha) {
			
		// CONTADOR DE VALIDAï¿½ï¿½O
		int contador = 0;
			
		// OBTER CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
			
		// TENTATIVA
		try {
				
			// COMANDO SQL
			String sql = "SELECT COUNT(*) FROM fretadores WHERE nomeUsuario = ? AND senha = ?";
				
			// PRAPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
				
			//PASSAR PARï¿½METROS
			pstmt.setString(1, nomeUsuario);
			pstmt.setString(2, senha);
				
			ResultSet rs = pstmt.executeQuery();
				
			rs.last();
				
			// ATRIBUIR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
			contador = rs.getInt(1);
				
		}catch(Exception erro) {
			System.out.println("Falha ao validar fretista:"+erro.getMessage());
		}
			
		// RETORNO
		return contador;
	}

	// OBTER DADOS DE FRETADOR PARA O CLIENTE VISITAR PERFIL
	public FretadorBean obterDadosFretador(int id) {
			
			// OBJETO UsuarioBean
			FretadorBean fretb = new FretadorBean();
			
			// ABRIR CONEXï¿½O
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA
			try {
				
				// COMANDO SQL
				String sql = "SELECT * FROM fretadores WHERE id = ?";
				
				// PREPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				// PASSAR PARï¿½METROS
				pstmt.setInt(1, id);
				
				ResultSet rs = pstmt.executeQuery();
				
				rs.last();
				
				// DEFINIR CARACTERISTICAS DO FRETISTA
				fretb.setId(rs.getInt(1));
				fretb.setNomeUsuario(rs.getString(2));
				fretb.setSenha(rs.getString(3));
				fretb.setNomeCompleto(rs.getString(4));
				fretb.setIdade(rs.getInt(5));
				fretb.setTelefone(rs.getString(6));
				fretb.setEmail(rs.getString(7));
				fretb.setCpf(rs.getString(8));
				fretb.setNumeroRegistro(rs.getLong(9));
				fretb.setImagem(rs.getString(10));
				fretb.setDescricao(rs.getString(11));
				
				// FINALIZAR CONEXï¿½ES
				pstmt.close();
				conexao.close();
				
			}catch(Exception erro) {
				System.out.println("Falha ao obter dados fretador:"+erro.getMessage());
			}
			
			// RETORNO
			return fretb;
		}
	
	// OBTER DADOS DE FRETADOR APï¿½S LOGIN OU CADASTRO
	public FretadorBean obterDadosFretistaBALA(String nomeUsuario, String senha) {
		
		// OBJETO UsuarioBean
		FretadorBean fretb = new FretadorBean();
		
		// ABRIR CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "SELECT * FROM fretadores WHERE nomeUsuario = ? AND senha = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setString(1, nomeUsuario);
			pstmt.setString(2, senha);
			
			ResultSet rs = pstmt.executeQuery();
			
			rs.last();
			
			// DEFINIR CARACTERISTICAS DO FRETISTA
			fretb.setId(rs.getInt(1));
			fretb.setNomeUsuario(rs.getString(2));
			fretb.setSenha(rs.getString(3));
			fretb.setNomeCompleto(rs.getString(4));
			fretb.setIdade(rs.getInt(5));
			fretb.setTelefone(rs.getString(6));
			fretb.setEmail(rs.getString(7));
			fretb.setCpf(rs.getString(8));
			fretb.setNumeroRegistro(rs.getLong(9));
			fretb.setImagem(rs.getString(10));
			fretb.setDescricao(rs.getString(11));
			
			// FINALIZAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
		}catch(Exception erro) {
			System.out.println("Falha ao obter dados fretadorBALA:"+erro.getMessage());
		}
		
		// RETORNO
		return fretb;
	}

	// CADASTRAR FRETADOR
	public boolean cadastrarFretador(String nomeUsuario, String senha,
			String nomeCompleto, int idade, String telefone, String email,
			String cpf, long numeroRegistro, String imagem, String descricao) {
		
		// VARIï¿½VEL DE VALIDAï¿½ï¿½O
		boolean sucesso = false;
		
		// OBJETO DE CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA 
		try {
			
			// COMANDO SQL
			String sql = "INSERT INTO fretadores (nomeUsuario, senha, nomeCompleto, idade, telefone, email, cpf, numeroRegistro, imagem, descricao) VALUES (?,?,?,?,?,?,?,?,?,?)";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setString(1, nomeUsuario);
			pstmt.setString(2, senha);
			pstmt.setString(3, nomeCompleto);
			pstmt.setInt(4, idade);
			pstmt.setString(5, telefone);
			pstmt.setString(6, email);
			pstmt.setString(7, cpf);
			pstmt.setLong(8, numeroRegistro);
			pstmt.setString(9, imagem);
			pstmt.setString(10, descricao);
			
			// EXECUTAR COMANDO SQL
			pstmt.execute();
			
			// FINALIZAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao cadastrar Fretador:"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}

	// EXCLUIR CONTA DO FRETADOR
	public boolean excluirFretador(int id) {
		
		// VARIï¿½VEL DE VALIDAï¿½ï¿½O
		boolean sucesso = false;
		
		// ABRIR CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "DELETE FROM fretadores WHERE id = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setInt(1, id);
			
			// EXECUTAR COMANDO SQL
			pstmt.execute();
			
			// FINALIZAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao excluir dados fretista"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}
	
	// ALTERAR DADOS DE CONTA FRETADOR
	public boolean alterarFretador(FretadorBean obj) {
		
		// VARIï¿½VEL DE VALIDAï¿½ï¿½O
		boolean sucesso = false;
		
		// ABRIR CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "UPDATE fretadores SET nomeUsuario = ?, senha = ?, nomeCompleto = ?, idade = ?, telefone = ?, email = ?, cpf = ?, numeroRegistro = ?, imagem = ?, descricao = ? WHERE id = ?";
			
			// PREAPAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setString(1, obj.getNomeUsuario());
			pstmt.setString(2, obj.getSenha());
			pstmt.setString(3, obj.getNomeCompleto());
			pstmt.setInt(4, obj.getIdade());
			pstmt.setString(5, obj.getTelefone());
			pstmt.setString(6, obj.getEmail());
			pstmt.setString(7, obj.getCpf());
			pstmt.setLong(8, obj.getNumeroRegistro());
			pstmt.setString(9, obj.getImagem());
			pstmt.setString(10, obj.getDescricao());
			pstmt.setInt(11, obj.getId());
			
			// EXECUTAR COMANDO
			pstmt.execute();
			
			// FINALIZAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
			// ATRIBUIR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("falha ao alterar fretador:"+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
	}

	// SELECIONAR TODOS OS FRETADORES CADASTRADOS
	public String selecionarFretador(int id2, int tipo) {
		
		// ESTRUTURA
		String estrutura = "<section id='blog' class='padd-section wow fadeInUp'>";
		
		
			estrutura+="<div class='container'>";
				estrutura+="<div class='section-title text-center'>";
				estrutura+="<h2>Ache o fretista que se encaixa com o serviço desejado !</h2>";
			estrutura+="</div>";
			estrutura+="</div>";
					
					estrutura+="<div class='container'>";
						estrutura+="<div class='row'>";
			
		// CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "SELECT * FROM fretadores";
			
			// PREPARAR ENVIO PARA O Query
			Statement stmt = conexao.createStatement();
			
			// EXECUTAR COMANDO SQL
			ResultSet rs = stmt.executeQuery(sql);
			
			// LAï¿½O
			while(rs.next()) {
		
			estrutura+= "<div class='flip-card wow fadeInUp'>";
				estrutura+= "<div class='flip-card-inner'>";
					estrutura+= "<div class='flip-card-front'>";
						estrutura+= "<a href='perfilFretista.jsp?id="+id2+"&tipo="+tipo+"&nomeUserFret="+rs.getString(2)+"&idFret="+rs.getString(1)+"'><img src='img/perfil/"+rs.getString(10)+"' alt='Avatar' style=' width:320px;height:300px; border-radius: 10px; border:3px solid #5691FC; box-shadow: 0px 0px 10px #475eba;'></a>";  
					estrutura+= "</div>";
			
					estrutura+= "<div class='flip-card-back'>"; 
						estrutura+= "<a style='text-decoration: none;' href='perfilFretista.jsp?id="+id2+"&tipo="+tipo+"&nomeUserFret="+rs.getString(2)+"&idFret="+rs.getString(1)+"'><h1 class='nomeFretador'>"+rs.getString(4)+"</h1></a>";
						estrutura+= "<a style='text-decoration: none;' href='perfilFretista.jsp?id="+id2+"&tipo="+tipo+"&nomeUserFret="+rs.getString(2)+"&idFret="+rs.getString(1)+"'><p class='numeroRegistro'>Número do Registro:"+rs.getString(9)+"</p></a>";
						estrutura+= "<a style='text-decoration: none;' href='perfilFretista.jsp?id="+id2+"&tipo="+tipo+"&nomeUserFret="+rs.getString(2)+"&idFret="+rs.getString(1)+"'><p class='descricao'>"+rs.getString(11)+"</p></a>";
					estrutura+= "</div>";
				estrutura+= "</div>";
			estrutura+= "</div>";
		       
			}
			
			// FINALIZAR CONEXï¿½ES
			stmt.close();
			conexao.close();
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao listar fretadores"+erroSQL.getMessage());
		}
		
		// FINALIZAR ESTRUTURA
		estrutura+="</div>";
		estrutura+="</div>";
		estrutura+="</section>";
		
		// RETORNO
		return estrutura;
	
	}
	
}












