<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.Date"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.Year"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="dao.ConversaDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

	<%

		LocalDateTime hora = LocalDateTime.now();
		int hora1 = hora.getHour();
		int Min = hora.getMinute();
		int Ano = hora.getYear();
		int Mes = hora.getMonthValue();
		int Dia = hora.getDayOfMonth();
	
	
		// OBTER AS VARIÁVEIS DE CADASTRO DA MSG
		String nomeCliente = request.getParameter("nomeCliente");
		String nomeFretador = request.getParameter("nomeFretador");
		
		String transmissor = request.getParameter("transmissor");
		String receptor = request.getParameter("receptor");
		
		String conteudo = request.getParameter("txtMsg");
		String data = Dia+"/"+Mes+"/"+Ano;
		String horario = hora1+":"+Min;
		
		// OBTER OS ID'S CLIENTE-FRETADOR
		int idCliente = Integer.parseInt(request.getParameter("idCliente"));
		int idFretador = Integer.parseInt(request.getParameter("idFretador"));
		
		// TIPO DE USER
		int tipo = Integer.parseInt(request.getParameter("tipo"));
		
		// EXECUTAR MÉTODO DE CADASTRO
		ConversaDao convdao = new ConversaDao();
		
		if(tipo == 1){
		
			boolean sucesso = convdao.enviarMsg(nomeCliente, nomeFretador, transmissor, receptor, conteudo, data, horario);
		
			// REDIRECIONAMENTO
			if(sucesso == true){
				response.sendRedirect("../conversas.jsp?idClie="+idCliente+"&idFret="+idFretador+"&tipo="+tipo);
			}else{
				response.sendRedirect("../conversas.jsp?msgFalha");
			}
			
		}else if(tipo == 2){	
			
			boolean sucesso = convdao.enviarMsg(nomeCliente, nomeFretador, transmissor, receptor, conteudo, data, horario);
		
			// REDIRECIONAMENTO
			if(sucesso == true){
				response.sendRedirect("../conversas.jsp?idClie="+idCliente+"&id="+idFretador+"&tipo="+tipo);
			}else{
				response.sendRedirect("../conversas.jsp?msgFalha");
			}
			
		}
			
		
	%>