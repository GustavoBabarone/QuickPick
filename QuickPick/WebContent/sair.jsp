<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%
    
   	// OBTER TIPO DE USU�RIO LOGADO
    int tipo = Integer.parseInt(request.getParameter("tipo"));
    
    // CONDICIONAL DE VALIDA��O
    if(tipo == 1){
    	
   		// REMOVER SESS�O TIPO CLIENTE
    	session.removeAttribute("cliente");
    	
    }else if(tipo == 2){
    	
    	// REMOVER SESS�O TIPO FRETISTA
    	session.removeAttribute("fretista");
    }
    
    // REDIRECIONAMENTO
    response.sendRedirect("index.jsp?msg=Sair&tipo=0");
    
    %>