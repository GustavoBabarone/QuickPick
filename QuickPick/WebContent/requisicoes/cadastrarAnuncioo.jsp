<%@page import="dao.AnuncioDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    
    <%
      	// TENTATIVA
          try{
          
          	// OBTER DADOS DO CLIENTE
              String nomeImagem = request.getParameter("nomeImg");
              int id = Integer.parseInt(request.getParameter("idUser"));
              String endereco1 = request.getParameter("ende1");
              String endereco2 = request.getParameter("ende2");
              String titulo = request.getParameter("nomePub");
              String descricao = request.getParameter("descr");
              int quantidade = Integer.parseInt(request.getParameter("quant"));
              
              // EXECUTAR CADASTRO DA CONTA
              AnuncioDao adao = new AnuncioDao();
              boolean sucesso = adao.cadastrarAnuncio(nomeImagem, id, endereco1, endereco2, titulo, descricao, quantidade);
              		
          	// REDIRECIONAMENTO
          	if(sucesso == true){
          		response.sendRedirect("../index.jsp?msg=AnuncioOk&id="+id+"&tipo=1");
          	}else{
          		response.sendRedirect("../cadastrarAnuncio.jsp?msg=AnuncioFalha");
          	}
          	
          }catch(Exception erro){
        	  out.print("Falha ao cadastrar anuncio: "+erro.getMessage());
          }
        %>
