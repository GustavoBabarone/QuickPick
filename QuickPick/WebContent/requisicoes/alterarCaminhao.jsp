<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.CaminhaoDao"%>
<%@page import="bean.CaminhaoBean"%>
<%

	// VARIÁVEIS
	int id = Integer.parseInt(request.getParameter("id"));

	String placa = request.getParameter("placa");
	//String modelo = request.getParameter("modelo");
	String cor = request.getParameter("cor");
	String taman = request.getParameter("taman");
	String carac = request.getParameter("carac");
	String img = request.getParameter("img");

	// OBJ FRETISTA BEAN
	CaminhaoBean cambean = new CaminhaoBean();
	cambean.setPlaca(placa);
	//cambean.setModelo(modelo);
	cambean.setCor(cor);
	cambean.setTamanho(taman);
	cambean.setCaracteristica(carac);
	cambean.setImagem(img);
	cambean.setIdUsuario(id);
	
	// EXECUTAR ALTERAÇÃO
	CaminhaoDao camdao = new CaminhaoDao();
	boolean sucesso = camdao.alterarCaminhao(cambean);
	
	// REDIRECIONAR
	if(sucesso == true){
		response.sendRedirect("../index.jsp?msg=AltCamOk&id="+id+"&tipo=2");
	}else{
		response.sendRedirect("../index.jsp?msg=AltCamFalha");
	}
	
%>