<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ page import="dao.FretadorDao"%>
<%@ page import="bean.FretadorBean" %>

<%

	// OBTER DADOS FRETISTA
	int id = Integer.parseInt(request.getParameter("id"));
	String nomeUser = request.getParameter("nomeUser");
	String senha = request.getParameter("senha");
	String nomeComp = request.getParameter("nomeComp");
	int idade = Integer.parseInt(request.getParameter("idade"));
	String tel = request.getParameter("tel");
	String email = request.getParameter("email");
	String cpf = request.getParameter("cpf");
	long nR = Long.parseLong(request.getParameter("nR"));
	String img = request.getParameter("img");
	String txt = request.getParameter("txtArea");
	
	// OBJ FRETISTA BEAN
	FretadorBean fretb = new FretadorBean();
	fretb.setNomeUsuario(nomeUser);
	fretb.setSenha(senha);
	fretb.setNomeCompleto(nomeComp);
	fretb.setIdade(idade);
	fretb.setTelefone(tel);
	fretb.setEmail(email);
	fretb.setCpf(cpf);
	fretb.setNumeroRegistro(nR);
	fretb.setImagem(img);
	fretb.setDescricao(txt);
	fretb.setId(id);
	
	// EXECUTAR ALTERAÇÃO
	FretadorDao fretdao = new FretadorDao();
	boolean sucesso = fretdao.alterarFretador(fretb);
	
	// REDIRECIONAR
	if(sucesso == true){
		response.sendRedirect("../index.jsp?msg=AltFretOk&id="+id+"&tipo=2");
	}else{
		response.sendRedirect("../index.jsp?msg=AltFretFalha");
	}
	
%>