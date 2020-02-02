<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.ClienteDao"%>
<%@page import="bean.ClienteBean"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>QuickPick - Cliente</title>

	<!-- Favicons -->
	<link href="img/svg/truck.png" rel="icon">
	<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Main Stylesheet File -->
	<link href="css/style.css" rel="stylesheet">
	
	<style>
		@charset "UTF-8";
	</style>
	
</head>
<body>

	<%
	
	// VARIÁVEIS DO USUÁRIO
	ClienteDao cliedao = new ClienteDao();
	
	// OBJ DE SESSÃO
	ClienteBean clieb = (ClienteBean) session.getAttribute("cliente");
	
	// OBTER DADOS DA SESSÃO DO CLIENTE
	ClienteBean clientebean = cliedao.obterDadosClienteBALA(clieb.getId());
	
	int id = 0;

	// TENTATIVA
	try{
		
		// OBTER VALORES
		id = Integer.parseInt(request.getParameter("id"));
		
	}catch(Exception erro){
		
	}
	
	%>


	<header id="header" class="header header-hide">
    <div class="container">

      <div id="logo" class="pull-left">
        <h1><a href="index.jsp?msg=Principal&id=<%out.print(id);%>&tipo=1" class="scrollto"><span>Quick</span>Pick</a></h1>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.jsp?msg=Principal&id=<%out.print(id);%>&tipo=1">Pagina Inicial</a></li>
          <li><a href="#about-us">Sobre o Aplicativo</a></li>
          <li><a href="#blog">Notícias</a></li>
          <li><a href="#contact">Contatos</a></li>  
           
        <!-- VARIAÇÃO -->   	
        	<li><a href="fretistas.jsp?id=<%out.print(id);%>&tipo=1">Buscar por Fretistas</a></li>
           
           	<li><a href="cadastrarAnuncio.jsp?id=<%out.print(id);%>&tipo=1">Criar Anúncio</a></li>
           
           	<li class="menu-has-children"><a href=""><%out.print(clieb.getNomeUsuario());%></a>
           		<ul>
           			<li><a href="perfilCliente.jsp?id=<%out.print(id);%>&tipo=1">Meu perfil</a></li>
           			<li><a href="sair.jsp?tipo=1">Sair</a></li>
           		</ul>
           	</li>
        <!-- VARIAÇÃO -->
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->
