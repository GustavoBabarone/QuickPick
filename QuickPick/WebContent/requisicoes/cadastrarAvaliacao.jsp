<%@page import="dao.AvaliacaoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%

	// VARIÁVEIS DE CADASTRAMENTO
	int avalia = Integer.parseInt(request.getParameter("avalia"));
	int idClie = Integer.parseInt(request.getParameter("idClie"));
	int idFret = Integer.parseInt(request.getParameter("idFret"));
	
	// MÉTODO DE CADASTRAMENTO
	AvaliacaoDao avadao = new AvaliacaoDao();
	boolean valida = avadao.cadastrarAvaliacao(avalia, idClie, idFret);

	// REDIRECIONAMENTO
	if(valida == true){
		response.sendRedirect("../index.jsp?msg=AvaliacaoOk");
	}else{
		response.sendRedirect("../testeAvaliacao.jsp?msg=AvaliacaoFalha");
	}
	
%>