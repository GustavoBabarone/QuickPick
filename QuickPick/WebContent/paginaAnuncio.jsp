<%@page import="dao.ClienteDao"%>
<%@page import="bean.ClienteBean"%>
<%@page import="dao.AnuncioDao"%>
<%@page import="bean.AnuncioBean"%>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
	
	<!-- Bootstrap css -->
  	<!-- <link rel="stylesheet" href="css/bootstrap.css"> -->
  	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- BOOTSTRAP -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<!-- Libraries CSS Files -->
  	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  	<link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  	<link href="lib/animate/animate.min.css" rel="stylesheet">
 	<link href="lib/modal-video/css/modal-video.min.css" rel="stylesheet">
	
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/estiloPagAnuncio.css">

	

	<%
		// VARIÁVEIS
		int idAnuncio = 0;
		int tipo = 0;
			
		// TENTATIVA
		try{
			
			// OBTER ID PELA URL
			idAnuncio = Integer.parseInt(request.getParameter("idAnuncio"));
			tipo = Integer.parseInt(request.getParameter("tipo"));
			
		}catch(Exception erro){
			
		}
		
	%>
	
	<%
		// OBTER DADOS DA POSTAGEM
		AnuncioDao adao = new AnuncioDao();
		AnuncioBean abean = adao.obterDadosAnuncio(idAnuncio);

		// OBTER DADOS DO CLIENTE
		ClienteDao cliedao = new ClienteDao();
		ClienteBean cliebean = cliedao.obterDadosClienteBALA(abean.getIdUsuario());
		
	%>
	
	<% if(tipo == 2){ %>
	
	<%@ include file="topos/topoFretista.jsp" %>
	
	<div class="container" id="tudo">
		<div class="row" id="linha1">
			
			<div class="col-6 col-lg-6 col-md-6 col-sm-12" id="ladoEsq">
				<div class="row">
					
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<h1 class="h1Titulo"><%out.print(cliebean.getNomeCompleto());%></h1>
					</div>
					
				</div>
				
				<hr>
				
				<div class="row" id="linhaImg">
				
					<div class="col-12 col-lg-12 col-md-12 col-sm-12" id="divImg">
						<img id="imgCaminhaoEsq" src="img/anuncios/<%out.print(abean.getImagem());%>" class="img-fluid">
					</div>
				
				</div>
			</div>
			
			<div class="col-6 col-lg-6 col-md-6 col-sm-12" id="ladoDir">
				<div class="row">
					
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<h1 class="h1Titulo"><%out.print(abean.getTitulo());%></h1>
					</div>	
				
				</div>
				
				<hr>
				
				<div class="row">
				
					<div class="col-6 col-lg-6 col-md-6 col-sm-12">
						<p class="parag">Local de partida</p>
						<input type="text" class="form-control" placeholder="Partida" value="<%out.print(abean.getEndereco1());%>" disabled>
					</div>	
					
					<div class="col-6 col-lg-6 col-md-6 col-sm-12">
						<p class="parag">Local de chegada</p>
						<input type="text" class="form-control" placeholder="Chegada" value="<%out.print(abean.getEndereco2());%>" disabled>
					</div>
						
				</div>
				
				<div class="row">
				
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<p class="parag">Descrição do anúncio</p>
						<textarea id="txtArea" class="form-control" placeholder="Descrição do anúncio..." disabled><%out.print(abean.getDescricao());%></textarea>
					</div>
						
				</div>
				
				<div class="row">
				
					<div class="col-3 col-lg-3 col-md-4 col-sm-5">
						<input type="text" class="form-control" placeholder="Quantidade" value="<%out.print(abean.getQuantidade());%> objetos" disabled>
					</div>	
				
				</div>
				
				<div class="row" id="linhaContato">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<a href="conversas.jsp?idClie=<%out.print(cliebean.getId());%>&id=<%out.print(fretbean.getId());%>&tipo=<%out.print(tipo);%>" class="btnFinal">Entrar em contato</a>
					</div>
				</div>
				
			</div>
			
		</div>
	</div>
	
	<% }else if(tipo == 1){ %>
	
	<%@ include file="topos/topoClienteDiferente.jsp" %>
	
	<div class="container" id="tudo">
		<div class="row" id="linha1">
			
			<div class="col-6 col-lg-6 col-md-6 col-sm-12" id="ladoEsq">
				<div class="row">
					
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<h1 class="h1Titulo"><%out.print(cliebean.getNomeCompleto());%></h1>
					</div>
					
				</div>
				
				<hr>
				
				<div class="row" id="linhaImg">
				
					<div class="col-12 col-lg-12 col-md-12 col-sm-12" id="divImg">
						<img id="imgCaminhaoEsq" src="img/anuncios/<%out.print(abean.getImagem());%>" class="img-fluid">
					</div>
				
				</div>
			</div>
			
			<div class="col-6 col-lg-6 col-md-6 col-sm-12" id="ladoDir">
				<div class="row">
					
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<h1 class="h1Titulo"><%out.print(abean.getTitulo());%></h1>
					</div>	
				
				</div>
				
				<hr>
				
				<div class="row">
				
					<div class="col-6 col-lg-6 col-md-6 col-sm-12">
						<p class="parag">Local de partida</p>
						<input type="text" class="form-control" placeholder="Partida" value="<%out.print(abean.getEndereco1());%>" disabled>
					</div>	
					
					<div class="col-6 col-lg-6 col-md-6 col-sm-12">
						<p class="parag">Local de chegada</p>
						<input type="text" class="form-control" placeholder="Chegada" value="<%out.print(abean.getEndereco2());%>" disabled>
					</div>
						
				</div>
				
				<div class="row">
				
					<div class="col-12 col-lg-12 col-md-12 col-sm-12">
						<p class="parag">Descrição do anúncio</p>
						<textarea id="txtArea" class="form-control" placeholder="Descrição do anúncio..." disabled><%out.print(abean.getDescricao());%></textarea>
					</div>
						
				</div>
				
				<div class="row">
				
					<div class="col-3 col-lg-3 col-md-4 col-sm-5">
						<input type="text" class="form-control" placeholder="Quantidade" value="<%out.print(abean.getQuantidade());%> objetos" disabled>
					</div>	
				
				</div>
				
			</div>
			
		</div>
	</div>
	
	<% } %>
	
	<%@include file="rodape.jsp" %>

</body>
</html>