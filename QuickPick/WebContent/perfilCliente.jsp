<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.AnuncioDao"%>
<%@page import="dao.ClienteDao"%>

	<!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/modal-video/js/modal-video.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>

	  <!-- CSS DO MODAL E ALTERAÇÃO DA DESCRIÇÃO -->
	  <link href="css/estiloIndex.css" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
	
	<!-- Bootstrap css -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- Libraries CSS Files -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- Main Stylesheet File -->
  	 <link href="css/estiloPerfilCliente.css" rel="stylesheet">
  	<link href="css/style.css" rel="stylesheet">	
    
	<%
	
	// VARI�VEIS
	int tipo = 0;
	
	// TENTATIVA
	try{
		
		// OBTER DADOS
		tipo = Integer.parseInt(request.getParameter("tipo"));
		
	}catch(Exception erro){
		
	}
	
	%>
	
	<%@ include file="topos/topoCliente.jsp" %>
	
	<div class="container wow fadeIn" id="conteudo">
		<div class="row">
			<div class="col-12 barraMobile" style="background-color: gray;">
				barra em formato mobile
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-3 barraDesktop" style="background-color: #5691FC;">
				<div class="row">
					<img src="img/perfil/<%out.print(clientebean.getImagem()); %>" id="imgPerfil" class="img-fluid">
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<fieldset id="fieldset">
							<legend id="contatos">Contatos</legend>
							<input type="text" class="form-control texto" value="<%out.print(clientebean.getEmail());%>" disabled>
							<input type="text" class="form-control texto" value="<%out.print(clientebean.getTelefone());%>" disabled>
						</fieldset>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<form action="alterarDadosCliente.jsp?id=<%out.print(id);%>" method="post">
							<button id="altDados">Alterar dados</button>
						</form>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<form action="requisicoes/excluirCliente.jsp?id=<%out.print(id);%>" method="post">
							<button id="exConta">Excluir conta</button>
						</form>
					</div>
				</div>
				
			</div>
			
		<div class="col-12 col-lg-9 col-md-12 col-sm-12 conteudoPrincipal" style="background-color: white;">
			
			<hr>
			
			<!-- PARA DANIEL -->
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12 col-sm-12">
					 <h1 id="nomeCompletoFret"><%out.print(clientebean.getNomeCompleto()); %></h1>
				</div>
			</div>
			<!-- ----------- -->	
			
			<hr>
				
			<div class="row">
				<div class="col-md-6 conteudoInterno">	
					 <p class="parag">Nome de Usuário</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(clientebean.getNomeUsuario());%>" disabled>
					 <p class="parag">Idade</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(clientebean.getIdade());%>" disabled>
				</div>
			
				<div class="col-md-6 conteudoInterno2">
					 <p class="parag">Endereço</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(clientebean.getEndereco());%>" disabled>
					 <p class="parag">CPF</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(clientebean.getCpf());%>" disabled>
				</div>
			</div>
			
			<div class="row" id="parteAnuncios">
				<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
				
				<hr>
			
				<!-- ---------- -->
				<div class="row">
					<div class="col-12 col-md-12 col-lg-12 col-sm-12">
						 <h1 id="nomeCompletoFret">Seus Anúnicios em Aberto!</h1>
					</div>
				</div>
				<!-- ----------- -->	
				
				<hr>
				
				<%
				
				// LISTAR OS ANUNCIOS EM ABERTO
				AnuncioDao anunciodao = new AnuncioDao();
				out.print(anunciodao.selecionarAnunciosAbertos(tipo, id));
			
				%>
				
				</div>
			</div>
			
		</div>
	</div>
	
	</div>

</body>
</html>