<%@page import="bean.FretadorBean"%>
<%@page import="bean.ClienteBean"%>
<%@page import="dao.ClienteDao"%>
<%@page import="dao.FretadorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%
    
    	// OBTER DADOS DE USUÁRIO E SENHA
    	String usuario = request.getParameter("usuario");
    	String senha = request.getParameter("senha");
    	
    	// VALIDAR NOME E SENHA
    	FretadorDao fretdao = new FretadorDao();
    	int contador = fretdao.validarLoginFretista(usuario, senha);
    	
    	// CONDICIONAL DE REDIRECIONAMENTO PARTE 01
    	if(contador == 0){
    		
    		ClienteDao cliedao = new ClienteDao();
    		int contador02 = cliedao.validarLoginCliente(usuario, senha);
    		
    		// CONDICIONAL DE REDIRECIONAMENTO PARTE 02
    		if(contador02 == 0){
    			response.sendRedirect("../login.jsp?msg=LoginFalha");
    		}else{
    			ClienteBean clieb = cliedao.obterDadosCliente(usuario, senha);
    			session.setAttribute("cliente", clieb);
    			response.sendRedirect("../index.jsp?msg=LogClie&id="+clieb.getId()+"&tipo=1");
    		}
    	
    	}else{
    		FretadorBean fretb = fretdao.obterDadosFretistaBALA(usuario, senha);
    		session.setAttribute("fretista", fretb);
    		response.sendRedirect("../index.jsp?msg=LogFret&id="+fretb.getId()+"&tipo=2");
    	}
    
    %>