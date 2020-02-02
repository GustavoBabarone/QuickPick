<%@page import="dao.ClienteDao"%>
<%@page import="dao.AnuncioDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%

	// VARIÁVEL DE EXCLUSÃO
	int idClie = Integer.parseInt(request.getParameter("id"));

	// MÉTODO DE EXCLUSÃO DOS ANUNCIOS
	AnuncioDao anundao = new AnuncioDao();
	boolean sucesso1 = anundao.excluirAnuncioPerfil(idClie);
	
	// MÉTODO DE EXCLUSÃO DA CONTA
	ClienteDao cliedao = new ClienteDao();
	boolean sucesso2 = cliedao.excluirCliente(idClie);
	
	// REDIRECIONAMENTOS
	if(sucesso1 == true && sucesso2 == true){
		
		response.sendRedirect("../index.jsp?msg=ExcluirClienteOK");
		
	}else{
		
		response.sendRedirect("../index.jsp?msg=ExcluirClienteFalha");
		
	}

%>