<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
   	// OBTER TIPO DE USUÁRIO LOGADO
    int tipo = Integer.parseInt(request.getParameter("tipo"));
    
    // CONDICIONAL DE VALIDAÇÃO
    if(tipo == 1){
    	
   		// REMOVER SESSÃO TIPO CLIENTE
    	session.removeAttribute("cliente");
    	
    }else if(tipo == 2){
    	
    	// REMOVER SESSÃO TIPO FRETISTA
    	session.removeAttribute("fretista");
    }
    
    // REDIRECIONAMENTO
    response.sendRedirect("index.jsp?msg=Sair&tipo=0");
    
    %>