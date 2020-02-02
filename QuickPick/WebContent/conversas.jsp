<%@page import="dao.FretadorDao"%>
<%@page import="dao.ConversaDao"%>
<%@page import="bean.ClienteBean"%>
<%@page import="dao.ClienteDao"%>

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

	<!-- BOOTSTRAP -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/estiloConversa.css">

	<%
	
		// VARIÁVEIS
		int tipo = 0;
		int idClie = 0;
		String nomeUser = "";
		int idFret = 0;
	
		// TENTATIVA
		try{
			
			// ATRIBUIR VALOR AS VARIÁVEIS
			tipo = Integer.parseInt(request.getParameter("tipo"));
			idClie = Integer.parseInt(request.getParameter("idClie"));
			
			nomeUser = request.getParameter("nomeUser");
			idFret = Integer.parseInt(request.getParameter("idFret"));
			
		}catch(Exception erro){
			
		}
		
		// OBTER DADOS DO CLIENTE
		ClienteDao cliedao = new ClienteDao();
		ClienteBean cliebean = cliedao.obterDadosClienteBALA(idClie);
	
		if(tipo == 2){
		
	%>
	
	<%@ include file="topos/topoFretista.jsp" %>

	<div class="container" id="tudo">
		<div class="row">
		
			<div class="col-12" id="topoConv">
				<h1 class="h1"><%out.print(cliebean.getNomeCompleto());%></h1>
			</div>
			
		</div>
		
		<div class="row">
			<div class="col-12" id="corpoConv">
					
				<!-- COMEÇO DA BARRA DE ROLAGEM -->
				<div id="barraRolagem">
						
				<%
				
				// LISTAR AS MSG ENVIADAS ANTERIOMENTE
				ConversaDao convdao = new ConversaDao();
				out.print(convdao.selecionarMsgFretistas(cliebean.getNomeUsuario(), fretb.getNomeUsuario(), fretb.getNomeUsuario(), cliebean.getNomeUsuario()));
				
				%>
						
				</div><!-- FIM DA BARRA DE ROLAGEM -->
				
			</div>
		</div>
		
		<div class="row" id="digConv">
		
			<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
				<form action="requisicoes/cadastrarMsg.jsp" method="post" id="form1">
					
					<input type="hidden" value="<%out.print(cliebean.getNomeUsuario());%>" name="nomeCliente">
					<input type="hidden" value="<%out.print(fretb.getNomeUsuario());%>" name="nomeFretador">
					<input type="hidden" value="<%out.print(fretb.getNomeUsuario());%>" name="transmissor">
					<input type="hidden" value="<%out.print(cliebean.getNomeUsuario());%>" name="receptor">
					<input type="hidden" value="<%out.print(tipo);%>" name="tipo">
					<input type="hidden" value="<%out.print(idClie);%>" name="idCliente">
					<input type="hidden" value="<%out.print(id);%>" name="idFretador">
					
					<input id="dig" type="text" placeholder="Digite algo para enviar..." name="txtMsg" maxlength="200" required>
					<button id="btnEnviar2">Enviar</button>
				</form>
			
			</div>
		</div>
		
	</div><!-- FIM DO CONTAINER -->
	
	<% }else if(tipo == 1){ 
	
		// OBTER DADOS DO FRETISTA EM CONTATO
		FretadorDao fretdao = new FretadorDao();
		FretadorBean fretb = fretdao.obterDadosFretador(idFret);
	
	%>
	
	<%@ include file="topos/topoClienteConversa.jsp" %>
	
	<div class="container" id="tudo">
		<div class="row">
		
			<div class="col-12" id="topoConv">
				<h1 id="TITLE"><%out.print(fretb.getNomeCompleto());%></h1>
			</div>
			
		</div>
		
		<div class="row">
			<div class="col-12" id="corpoConv">
					
				<!-- COMEÇO DA BARRA DE ROLAGEM -->
				<div id="barraRolagem">
						
					<%
					
					// LISTAR AS MSG ENVIADAS ANTERIOMENTE
					ConversaDao convdao = new ConversaDao();
					out.print(convdao.selecionarMsgCliente(clieb.getNomeUsuario(), fretb.getNomeUsuario(), clieb.getNomeUsuario(), fretb.getNomeUsuario()));
					
					%>
						
				</div><!-- FIM DA BARRA DE ROLAGEM -->
				
			</div>
		</div>
		
		<div class="row" id="digConv">
		
			<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
				<form action="requisicoes/cadastrarMsg.jsp" method="post">
					
					<input type="hidden" value="<%out.print(clieb.getNomeUsuario());%>" name="nomeCliente">
					<input type="hidden" value="<%out.print(fretb.getNomeUsuario());%>" name="nomeFretador">
					<input type="hidden" value="<%out.print(clieb.getNomeUsuario());%>" name="transmissor">
					<input type="hidden" value="<%out.print(fretb.getNomeUsuario());%>" name="receptor">
					<input type="hidden" value="<%out.print(tipo);%>" name="tipo">
					<input type="hidden" value="<%out.print(clieb.getId());%>" name="idCliente">
					<input type="hidden" value="<%out.print(idFret);%>" name="idFretador">
					
					<input id="dig" type="text" placeholder="Digite algo para enviar..." name="txtMsg">
					<button id="btnEnviar">Enviar</button>
				</form>
		
			</div>
		</div>
	</div><!-- FIM DO CONTAINER -->
	
	<% } %>
	
</body>
</html>