<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.ClienteDao"%>
<%@page import="bean.ClienteBean"%>
<%

	//OBTER DADOS CLIENTE
	int id = Integer.parseInt(request.getParameter("id"));
	String nomeUser = request.getParameter("nomeUser");
	String senha = request.getParameter("senha");
	String nomeComp = request.getParameter("nomeComp");
	int idade = Integer.parseInt(request.getParameter("idade"));
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String cpf = request.getParameter("cpf");
	String ende = request.getParameter("ende");
	String img = request.getParameter("img");

	// OBJ CLIENTE BEAN
	ClienteBean clieb = new ClienteBean();
	clieb.setNomeUsuario(nomeUser);
	clieb.setSenha(senha);
	clieb.setNomeCompleto(nomeComp);
	clieb.setIdade(idade);
	clieb.setTelefone(tel);
	clieb.setEmail(email);
	clieb.setCpf(cpf);
	clieb.setEndereco(ende);
	clieb.setImagem(img);
	clieb.setId(id);
	
	// EXECUTAR ALTERAÇÃO
	ClienteDao fretdao = new ClienteDao();
	boolean sucesso = fretdao.alterarCliente(clieb);
	
	// REDIRECIONAR
	if(sucesso == true){
		response.sendRedirect("../index.jsp?msg=AltClieOk&id="+id+"&tipo=1");
	}else{
		response.sendRedirect("../index.jsp?msg=AltClieFalha");
	}

%>