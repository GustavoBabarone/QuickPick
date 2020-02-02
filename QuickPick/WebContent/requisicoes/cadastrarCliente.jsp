<%@page import="bean.ClienteBean"%>
<%@page import="dao.ClienteDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    
    <%
    
    // OBTER DADOS DO CLIENTE
    String nomeCompleto = request.getParameter("nomeCompletoCliente");
    String nomeUsuario = request.getParameter("nomeUsuarioCliente");
    String email = request.getParameter("emailCliente");
    String senha = request.getParameter("senhaCliente");
    int idade = Integer.parseInt(request.getParameter("idadeCliente"));
    String telefone = request.getParameter("telefoneCliente");
    String cpf = request.getParameter("cpfCliente");
    String endereco = request.getParameter("enderecoCliente");
    String imagem = "perfil.jpg";
    
    // EXECUTAR CADASTRO DA CONTA
    ClienteDao cliedao = new ClienteDao();
    boolean sucesso = cliedao.cadastrarCliente(nomeUsuario, senha, nomeCompleto, idade, telefone, email, endereco, cpf, imagem);
    
    if(sucesso == true){
    	ClienteBean clieb = cliedao.obterDadosCliente(nomeUsuario, senha);
		session.setAttribute("cliente", clieb);
    	response.sendRedirect("../index.jsp?msg=CadClieOk&id="+clieb.getId()+"&tipo=1");
    }else{
    	response.sendRedirect("../cadastrar.jsp?msg=CadClieFalha");
    }
    %>
