<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.FretadorDao"%>
<%@page import="bean.FretadorBean"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<title>QuickPick - Fretista</title>

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
	FretadorDao fretdao = new FretadorDao();
	
	// OBJ DE SESSÃO
	FretadorBean fretb = (FretadorBean) session.getAttribute("fretista");
	
	// OBTER DADOS DO FRETISTA SESSÃO
	FretadorBean fretbean = fretdao.obterDadosFretador(fretb.getId());
	
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
        <h1><a href="index.jsp?msg=Principal&id=<%out.print(id);%>&tipo=2" class="scrollto"><span>Quick</span>Pick</a></h1>
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.jsp?msg=Principal&id=<%out.print(id);%>&tipo=2">Pagina Inicial</a></li>
          <li><a href="#about-us">Sobre o Aplicativo</a></li>
          <li><a href="#blog">Notícias</a></li>
          <li><a href="#contact">Contatos</a></li>  
           
        <!-- VARIAÇÃO -->   	
        	<li><a href="anuncios.jsp?id=<%out.print(id);%>&tipo=2">Ver Anúncios</a></li>
        	
        	<li class="menu-has-children"><a href=""><%out.print(fretbean.getNomeUsuario());%></a>
           	 <ul>
           		<li><a href="perfilFretista.jsp?id=<%out.print(id);%>&tipo=2">Meu perfil</a></li>
           		<li><a href="sair.jsp?tipo=2">Sair</a></li>
           	</ul>
           </li> 
        <!-- VARIAÇÃO -->
          
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->






	