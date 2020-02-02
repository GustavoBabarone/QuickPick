<%@ include file="topos/topoFretista.jsp" %>
<%@page import="dao.AnuncioDao"%>

	<!-- Bootstrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
    
	<!-- Bootstrap css -->
	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
    <!-- Libraries CSS Files -->
	<link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
 	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<link href="lib/animate/animate.min.css" rel="stylesheet">
   
	  <!-- Google Fonts -->
	  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
	
	  <!-- Bootstrap css -->
	  <!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
	  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	  <!-- Libraries CSS Files -->
	  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
	  <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
	  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	  <link href="lib/animate/animate.min.css" rel="stylesheet">
	  <link href="lib/modal-video/css/modal-video.min.css" rel="stylesheet">
	  
	<!-- Main Stylesheet File -->
	<link href="css/estiloAnuncios.css" rel="stylesheet">
	<link href="css/style.css" rel="stylesheet">
	

	<%
		// VARIÁVEIS
			int tipo = 0;
			
			// TENTATIVA
			try{
			
			// OBTER TIPO
			tipo = Integer.parseInt(request.getParameter("tipo"));
		
			}catch(Exception erro){
		
			}
	%>
	
	<!--==========================
    	Hero Section
	  ============================-->
	  <section id="hero" class="wow fadeIn">
	    <div class="hero-container">
	      <h1>Seja Bem-Vindo a Sessão dos Anuncios</h1>
	      	<h2>Aqui você pode achar anuncios de clientes que precisam dos seus serviços de frete!</h2>
	      <a href="#anuncios" class="btn-get-started scrollto">Comece a Usar</a>
	    </div>
	  </section><!-- #hero -->
	  
		<%
			// EXECUTAR MÉTODO
		  	AnuncioDao adao = new AnuncioDao();
		  	out.print(adao.selecionarAnuncios(id, tipo));
		%>
		
		<%@ include file="rodape.jsp" %>
		
		
</body>
</html>