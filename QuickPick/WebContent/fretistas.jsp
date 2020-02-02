<%@page import="dao.FretadorDao"%>

	<!--HEADER-->	
	<%@ include file="topos/topoCliente.jsp" %>

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

    <!-- Bootstrap css -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Libraries CSS Files -->
    <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="lib/animate/animate.min.css" rel="stylesheet">

    <!-- Main Stylesheet File -->
    <link href="css/style.css" rel="stylesheet">

	<%
	
		// VARIÁVEIS
		int tipo = 0;
		
		try{
			
			// OBTER MSG - USER - TIPO
			tipo = Integer.parseInt(request.getParameter("tipo"));
			
		}catch(Exception erro){}
		
	%>

	
	
	<!--==========================
    Hero Section
  ============================-->
  <section id="hero" class="wow fadeIn">
    <div class="hero-container">
      <h1>Seja Bem-Vindo a Sessão dos Fretistas</h1>
      	<h2>Aqui você pode pesquisar por fretistas de seu interesse!</h2>
      <a href="#blog" class="btn-get-started scrollto">Comece a Usar</a>
    </div>
  </section><!-- #hero -->
  
  <%
  
  	// EXECUTAR MÉTODO
  	FretadorDao fretdao = new FretadorDao();
  	out.print(fretdao.selecionarFretador(id, tipo));
  
  %>
  
  <div class="teste">
  <%@ include file="rodape.jsp" %> 
  </div>

</body>
</html>