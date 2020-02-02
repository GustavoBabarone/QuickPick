<%@page import="dao.AnuncioDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%

	// OBTER VARIÁVEL DE EXCLUSÃO
	int id = Integer.parseInt(request.getParameter("idAnuncio"));
	int idUser = Integer.parseInt(request.getParameter("id"));
	int tipo = Integer.parseInt(request.getParameter("tipo"));

	// EXECUTAR MÉTODO DE EXCLUSÃO
	AnuncioDao anundao = new AnuncioDao();
	boolean sucesso = anundao.excluirAnuncio(id);
	
	// REDIRECIONAMENTO
	if(sucesso == true){
		response.sendRedirect("../perfilCliente.jsp?msg=ExcluirAnuncioOK&id="+idUser+"&tipo="+tipo);
	}else{
		response.sendRedirect("../perfilCliente.jsp?msg=ExcluirAnuncioFalha");
	}

%>