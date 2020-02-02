<%@page import="dao.CaminhaoDao"%>
<%@page import="dao.FretadorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%

	// VARIÁVEIS DE EXCLUSÃO
	int idFretista = Integer.parseInt(request.getParameter("idFret"));
	
	// MÉTODO DE EXCLUSÃO DO CAMINHÃO
	CaminhaoDao camdao = new CaminhaoDao();
	boolean sucesso1 = camdao.excluirCaminhao(idFretista);

	// MÉTODO DE EXCLUSÃO DE CONTA
	FretadorDao fretdao = new FretadorDao();
	boolean sucesso2 = fretdao.excluirFretador(idFretista);
	
	// REDIRECIONAMENTOS
	if(sucesso1 == true && sucesso2 == true){
		
		response.sendRedirect("../index.jsp?msg=ExcluirFretOk");
	
	}else{
		
		response.sendRedirect("../perfilFretista.jsp?msg=ExcluirFretFalha");
	}

%>