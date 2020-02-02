package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import bean.AnuncioBean;
import conexao.Conexao;

public class AnuncioDao {
	
	// SELECIONAR TODAS OS ANUNCIOS CADASTRADOS
	public String selecionarAnuncios(int id, int tipo) {
			
		// ESTRUTURA
		String estrutura = "<section id='anuncios' class='padd-section wow fadeInUp'>";
				estrutura+= "<div class='container' id='tudo'>";
				
				estrutura+="<div class='section-title text-center'>";
					estrutura+="<h2>Encontre o melhor anuncio para você!</h2>";
				estrutura+="</div>";
			
			estrutura+="</div>";
					
					estrutura+="<div class='container'>";
						estrutura+="<div class='row'>";
	        
			// CONEXï¿½O
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA
			try {
				
				// COMANDO SQL
				String sql = "SELECT * FROM anuncios";
				
				// PREPARAR ENVIO PARA O Query
				Statement stmt = conexao.createStatement();
				
				// EXECUTAR COMANDO SQL
				ResultSet rs = stmt.executeQuery(sql);
				
				// LAï¿½O
				while(rs.next()) {
		
				estrutura+="<div class='card wow fadeInUp col-lg-4 col-md-4 col-sm-4'>";
					estrutura+="<div class='image'>";
						estrutura+="<a style='text-decoration: none;' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+id+"&tipo="+tipo+"'><img src='img/anuncios/"+rs.getString(2)+"' class='img'></a>"; 
						estrutura+="<a style='text-decoration: none;' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+id+"&tipo="+tipo+"'><hr class='destaque'><h3 class='titulo'>"+rs.getString(6)+"</h3></a>"; 
					estrutura+="</div>";
					
					estrutura+="<div class='details'>";
						estrutura+="<div class='center'>";
							estrutura+="<a style='text-decoration: none;' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+id+"&tipo="+tipo+"'><h1>"+rs.getString(7)+"<br><span>Partida: "+rs.getString(4)+"</span></h1></a>"; 
							estrutura+="<a style='text-decoration: none;' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+id+"&tipo="+tipo+"'><h1><span>Chegada: "+rs.getString(5)+"</span></h1></a>"; 
							estrutura+="<a style='text-decoration: none;' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+id+"&tipo="+tipo+"'><p>"+rs.getString(8)+" objetos</p></a>"; 
						estrutura+="</div>";
					estrutura+="</div>";
				estrutura+="</div>";
		            
				}
				
				// FINALIZAR CONEXï¿½ES
				stmt.close();
				conexao.close();
				
			}catch(Exception erroSQL) {
				System.out.println("Falha ao listar os anuncios"+erroSQL.getMessage());
			}
			
			// FINALIZAR ESTRUTURA
			estrutura+="</div>";
			estrutura+="</div>";
			estrutura+="</section>";
			
			// RETORNO
			return estrutura;
		
		}

	// CADASTRAR ANUNCIO
	public boolean cadastrarAnuncio(String imagem, int idUsuario , String endereco1, String endereco2, String titulo, 
	String descricao, int quantidade) {
		
			// VARIï¿½VEL DE VALIDAï¿½ï¿½O
			boolean sucesso = false;
			
			// OBJETO DE CONEXï¿½O
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA 
			try {
				
				// COMANDO SQL
				String sql = "INSERT INTO anuncios (imagem, idUsuario, endereco1, endereco2, titulo, descricao, quantidade) VALUES (?,?,?,?,?,?,?)";
				
				// PREPARAR ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				// PASSAR PARï¿½METROS
				pstmt.setString(1, imagem);
				pstmt.setInt(2, idUsuario);
				pstmt.setString(3, endereco1);
				pstmt.setString(4, endereco2);
				pstmt.setString(5, titulo);
				pstmt.setString(6, descricao);
				pstmt.setInt(7, quantidade); 
				
				// EXECUTAR COMANDO SQL
				pstmt.execute();
				
				// FINALIZAR CONEXï¿½ES
				pstmt.close();
				conexao.close();
				
				// ATRIBUIR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
				sucesso = true;
				
			}catch(Exception erroSQL) {
				System.out.println("Falha ao cadastrar anuncio:"+erroSQL.getMessage());
			}
			
			// RETORNO
			return sucesso;
		}
	
	// OBTER DADOS DO ANUNCIOS
	public AnuncioBean obterDadosAnuncio(int idAnuncio) {
	
		// OBJ DE PUBLICAï¿½ï¿½O
		AnuncioBean abean = new AnuncioBean();
		
		// CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "SELECT *FROM anuncios WHERE idAnuncio = ?";
			
			// PEPARA ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setInt(1, idAnuncio);
			
			//
			ResultSet rs = pstmt.executeQuery();
			
			//
			rs.last();
			
			// OBJ E CARACTERï¿½STICAS
			abean.setIdAnuncio(rs.getInt(1));
			abean.setImagem(rs.getString(2));
			abean.setIdUsuario(rs.getInt(3));
			abean.setEndereco1(rs.getString(4));
			abean.setEndereco2(rs.getString(5));
			abean.setTitulo(rs.getString(6));
			abean.setDescricao(rs.getString(7));
			abean.setQuantidade(rs.getInt(8));
			
			// FECHAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao obterDados do anuncio: "+erroSQL.getMessage());
		}
		
		// RETORNO
		return abean;
		
	}
		
	// SELECIONAR ANUNCIOS EM ABERTO PELO CLIENTE
	public String selecionarAnunciosAbertos(int tipo, int idUsuario) {
		
		// ESTRUTURA
		String estrutura = "<div class='row'>";
			
		// CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			// COMANDO SQL
			String sql = "SELECT * FROM anuncios WHERE idUsuario = ?";
			
			// PREPARAR ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setInt(1, idUsuario);
			
			// EXECUTAR COMANDO SQL
			ResultSet rs = pstmt.executeQuery();
			
			// LAï¿½O
			while(rs.next()) {
		
			estrutura+= "<div class='card1 1 col-3 col-lg-3 col-md-3 col-sm-4'>";
			estrutura+= "<div class='card_image'> <a id='aSag' href='paginaAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+idUsuario+"&tipo="+1+"'><img src='img/anuncios/"+rs.getString(2)+"'></a> </div>";
			estrutura+= "<div class='card_title title-white'>";
			estrutura+= "<p class='cartao'></p>";
			estrutura+= "</div>";
			estrutura+= "<a id='ida' href='requisicoes/excluirAnuncio.jsp?idAnuncio="+rs.getInt(1)+"&id="+idUsuario+"&tipo="+tipo+"'>Excluir</a>";	
			estrutura+= "</div>"; 
			 
			}
			
			// FINALIZAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
		}catch(Exception erroSQL) {
			System.out.println("Falha ao listar anuncios especï¿½ficos: "+erroSQL.getMessage());
		}
		
		// FINALIZAR ESTRUTURA
		estrutura+="</div>";
		estrutura+="</div>";
		estrutura+= "</div>";
		
		// RETORNO
		return estrutura;
	
		}
	
	// EXCLUIR ANUNCIO
	public boolean excluirAnuncio(int idAnuncio) {
		
		// VARIï¿½VEL DE VALIDAï¿½ï¿½O
		boolean sucesso = false;
		
		// CONEXï¿½O
		Connection conexao = Conexao.obterConexao();
		
		// TENTATIVA
		try {
			
			String sql = "DELETE FROM anuncios WHERE idAnuncio = ?";
			
			// PREPARA ENVIO PARA O Query
			PreparedStatement pstmt = conexao.prepareStatement(sql);
			
			// PASSAR PARï¿½METROS
			pstmt.setInt(1, idAnuncio);
			
			// EXECUTAR PSTMT
			pstmt.execute();
			
			// FECHAR CONEXï¿½ES
			pstmt.close();
			conexao.close();
			
			// ADICIONAR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
			sucesso = true;
			
		}catch(Exception erroSQL) {
			System.out.println("falha ao excluir anuncio solo : "+erroSQL.getMessage());
		}
		
		// RETORNO
		return sucesso;
		
	}
	
	// EXCLUIR ANUNCIO
		public boolean excluirAnuncioPerfil(int idUsuario) {
			
			// VARIï¿½VEL DE VALIDAï¿½ï¿½O
			boolean sucesso = false;
			
			// CONEXï¿½O
			Connection conexao = Conexao.obterConexao();
			
			// TENTATIVA
			try {
				
				String sql = "DELETE FROM anuncios WHERE idUsuario = ?";
				
				// PREPARA ENVIO PARA O Query
				PreparedStatement pstmt = conexao.prepareStatement(sql);
				
				// PASSAR PARï¿½METROS
				pstmt.setInt(1, idUsuario);
				
				// EXECUTAR PSTMT
				pstmt.execute();
				
				// FECHAR CONEXï¿½ES
				pstmt.close();
				conexao.close();
				
				// ADICIONAR VALOR A VARIï¿½VEL DE VALIDAï¿½ï¿½O
				sucesso = true;
				
			}catch(Exception erroSQL) {
				System.out.println("falha ao excluir anuncio pela exclusï¿½o do perfil: "+erroSQL.getMessage());
			}
			
			// RETORNO
			return sucesso;
			
		}

}
		
	

