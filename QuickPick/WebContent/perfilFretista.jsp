<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@page import="dao.CaminhaoDao"%>
<%@page import="bean.CaminhaoBean"%>
<%@page import="bean.FretadorBean"%>
<%@page import="dao.FretadorDao"%>

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
  	<link href="css/style.css" rel="stylesheet">	
    
    <link href="css/estiloPerfilFretista.css" rel="stylesheet">
    
	<%
	
	// VARI��VEIS
	int tipo = 0;
	String nomeUsuario = "";
	int idFret = 0;
	
	// TENTATIVA
	try{
		
		// OBTER DADOS
		tipo = Integer.parseInt(request.getParameter("tipo"));
		nomeUsuario = request.getParameter("nomeUserFret");
		idFret = Integer.parseInt(request.getParameter("idFret"));
		
	}catch(Exception erro){
		
	}
		
	if(tipo == 2){ %>
	
	<%@ include file="topos/topoFretista.jsp" %>

	<%
	
		// OBTER DADOS DO CAMINH�O	
		CaminhaoDao camdao = new CaminhaoDao();
		CaminhaoBean cambean = camdao.obterDadosCaminhao(id);
	
	%>

	<div class="container wow fadeIn" id="conteudo">
		<div class="row">
			<div class="col-12 barraMobile" style="background-color: #5691FC;">
				
				<div class="row">
					<div class="col-3 col-sm-3 col-xs-3">
						<img src="img/perfil/<%out.print(fretbean.getImagem()); %>" id="imgPerfil" class="img-fluid">
					</div>
					
					<div class="col-5 col-sm-5 col-xs-5" id="divImgPerfil">
						<textarea placeholder="Descrição..." class="texto" id="textoo" maxlength="240" disabled><%out.print(fretbean.getDescricao()); %></textarea>
					</div>
					
					<div class="col-4 col-sm-4 col-xs-4" id="divContatos">
						<fieldset id="fieldset">
							<legend id="contatos">Contatos</legend>
							<input type="text" class="form-control texto" placeholder="<%out.print(fretbean.getEmail());%>" disabled>
							<input type="text" class="form-control texto" placeholder="<%out.print(fretbean.getTelefone());%>" disabled>
						</fieldset>
					</div>
				</div>
				
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-3 barraDesktop" style="background-color: #5691FC;">
				
				<!-- FORM ADRIAN -->
				<form action="">
					<div class="row">
						<img src="img/perfil/<%out.print(fretbean.getImagem()); %>" id="imgPerfil" class="img-fluid">
					</div>
					
				</form>
				<!-- FORM ADRIAN -->
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<textarea placeholder="Descrição..." class="texto" id="textoo" maxlength="240" disabled><%out.print(fretbean.getDescricao()); %></textarea>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<fieldset id="fieldset">
							<legend id="contatos">Contatos</legend>
							<input type="text" id="txtEmail" class="form-control texto" value="<%out.print(fretbean.getEmail());%>" disabled>
							<input type="text" id="txtTele" class="form-control texto" value="<%out.print(fretbean.getTelefone());%>" disabled>
						</fieldset>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<form action="alterarDadosFretador.jsp?id=<%out.print(cambean.getIdUsuario());%>" method="post">
							<button id="altDados">Alterar dados</button>
						</form>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<form action="requisicoes/excluirFretadorCaminhao.jsp?idFret=<%out.print(id);%>" method="post">
							<button id="exConta">Excluir conta</button>
						</form>
					</div>
				</div>
			
			</div>
			
		<div class="col-12 col-lg-9 col-md-12 col-sm-12 conteudoPrincipal" style="background-color: white;">
			
			<hr>
			
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12 col-sm-12">
					 <h1 id="nomeCompletoFret"><%out.print(fretbean.getNomeCompleto()); %></h1>
				</div>
			</div>	
			
			<hr>
				
			<div class="row">
				<div class="col-md-6 conteudoInterno">	
					 <p class="parag">Nome de Usuário</p>
					 <input type="text" id="txtNome" class="form-control txtInfos" value="<%out.print(fretbean.getNomeUsuario());%>" disabled>
					 <p class="parag">Idade</p>
					 <input type="text" id="txtIdade" class="form-control txtInfos" value="<%out.print(fretbean.getIdade());%>" disabled>
				</div>
			
				<div class="col-md-6 conteudoInterno2">
					 <p class="parag">Número de Registro</p>
					 <input type="text" id="txtReg" class="form-control txtInfos" value="<%out.print(fretbean.getNumeroRegistro());%>" disabled>
					 <p class="parag">CPF</p>
					 <input type="text" id="txtCpf" class="form-control txtInfos" value="<%out.print(fretbean.getCpf());%>" disabled>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12 col-sm-12" id="tituloCaminhao">
					 <h1 id="caminhaoInfo">Informações do Caminhão</h1>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-6 col-lg-6 col-md-6 col-sm-12 conteudoInterno">	
					 <p class="parag">Placa</p>
					 <input type="text" id="txtPlaca" class="form-control txtInfos" value="<%out.print(cambean.getPlaca());%>" disabled>
					 <p class="parag">Modelo</p>
					 <input type="text" id="txtModelo" class="form-control txtInfos" value="<%out.print(cambean.getModelo());%>" disabled>
					 <p class="parag">Cor</p>
					 <input type="text" id="txtCor" class="form-control txtInfos" value="<%out.print(cambean.getCor());%>" disabled>
					 <p class="parag">Tamanho</p>
					 <input type="text" id="txtTam" class="form-control txtInfos" value="<%out.print(cambean.getTamanho());%>" disabled>
					 <p class="parag">Característica</p>
					 <input type="text" id="txtCarac" class="form-control txtInfos" value="<%out.print(cambean.getCaracteristica());%>" disabled>
				</div>
				
				<div class="col-6 col-lg-6 col-md-6 col-sm-12 conteudoInterno">
					<img id="imgCaminhao" src="images/<%out.print(cambean.getImagem());%>" class="img-fluid">
				</div>
			</div>
			
		</div>
	</div>
	
	</div>
	
	<% }else if(tipo == 1){ 
	
		// OBTER DADOS DO FRETISTA SELECIONADO PARA VISITA DO PERFIL
		FretadorDao fretdao = new FretadorDao();
		FretadorBean fretb = fretdao.obterDadosFretador(idFret);
		
		// OBTER DADOS DO CAMINH�O	
		CaminhaoDao camdao = new CaminhaoDao();
		CaminhaoBean cambean = camdao.obterDadosCaminhao(idFret);
	
	%>
	
	<%@ include file="topos/topoCliente.jsp" %>
	
	<div class="container" id="conteudo">
		<div class="row">
			<div class="col-12 barraMobile" style="background-color: #5691FC;">
				
				<div class="row">
					<div class="col-3 col-sm-3 col-xs-3">
						<img src="img/perfil/<%out.print(fretb.getImagem()); %>" id="imgPerfil" class="img-fluid">
					</div>
					
					<div class="col-5 col-sm-5 col-xs-5" id="divImgPerfil">
						<textarea placeholder="Descrição..." class="texto" id="textoo" maxlength="240" disabled><%out.print(fretb.getDescricao()); %></textarea>
					</div>
					
					<div class="col-4 col-sm-4 col-xs-4" id="divContatos">
						<fieldset id="fieldset">
							<legend id="contatos">Contatos</legend>
							<input type="text" class="form-control texto" value="<%out.print(fretb.getEmail());%>" disabled>
							<input type="text" class="form-control texto" value="<%out.print(fretb.getTelefone());%>" disabled>
						</fieldset>
					</div>
				</div>
				
			</div>
		</div>
	
		<div class="row">
			<div class="col-sm-3 barraDesktop" style="background-color: #5691FC;">
				<div class="row">
					<img src="img/perfil/<%out.print(fretb.getImagem()); %>" id="imgPerfil" class="img-fluid">
				</div>
				
				<div class="row">
					<div class="col-12 col-md-12 col-lg-12 col-sm-12">
						<textarea placeholder="Descrição..." class="texto" id="textoo" maxlength="240" disabled><%out.print(fretb.getDescricao()); %></textarea>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-md-12 col-lg-12 col-sm-12">
						<fieldset id="fieldset">
							<legend id="contatos">Contatos</legend>
							<input type="text" class="form-control texto" value="<%out.print(fretb.getEmail());%>" disabled>
							<input type="text" class="form-control texto" value="<%out.print(fretb.getTelefone());%>" disabled>
						</fieldset>
					</div>
				</div>
				
				<div class="row">
					<div class="col-12 col-md-12 col-lg-12 col-sm-12" id="btnEntrarContato">
						<form action="conversas.jsp?idClie=<%out.print(id);%>&idFret=<%out.print(fretb.getId());%>&tipo=<%out.print(tipo);%>" method="post">
							<button id="btnEnt" class="btn btn-success" >Entrar em contato</button>
						</form>
					</div>
				</div>
				
			</div>
			
		<div class="col-12 col-lg-9 col-md-12 col-sm-12 conteudoPrincipal" style="background-color: white;">
			
			<hr>
			
			<!-- PARA DANIEL -->
			<div class="row">
				<div class="col-12 col-md-8 col-lg-12 col-sm-8">
					 <h1 id="nomeCompletoFret"><%out.print(fretb.getNomeCompleto()); %></h1>
				</div>
				
				<div class="col-4 col-md-4 col-lg-4 col-sm-4" id="btnEntrarContatoPequeno">
					<a id="btnPeq"             href="conversas.jsp?idClie=<%out.print(id);%>&idFret=<%out.print(fretb.getId());%>&tipo=<%out.print(tipo);%>">Entrar em contato</a>
				</div>
				
			</div>
			<!-- ----------- -->	
			
			<hr>
				
			<div class="row">
				<div class="col-md-6 conteudoInterno">	
					 <p class="parag">Nome de Usuário</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(fretb.getNomeUsuario());%>" disabled>
					 <p class="parag">Idade</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(fretb.getIdade());%>" disabled>
				</div>
			
				<div class="col-md-6 conteudoInterno2">
					 <p class="parag">Número de Registro</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(fretb.getNumeroRegistro());%>" disabled>
					 <p class="parag">CPF</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(fretb.getCpf());%>" disabled>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-12 col-md-12 col-lg-12 col-sm-12" id="tituloCaminhao">
					 <h1 id="caminhaoInfo">Informações do Caminhão</h1>
				</div>
			</div>
			
			<hr>
			
			<div class="row" id="divCaminhao">
				<div class="col-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 conteudoInterno" id="infoCaminhao">	
					 <p class="parag">Placa</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(cambean.getPlaca());%>" disabled>
					 <p class="parag">Modelo</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(cambean.getModelo());%>" disabled>
					 <p class="parag">Cor</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(cambean.getCor());%>" disabled>
					 <p class="parag">Tamanho</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(cambean.getTamanho());%>" disabled>
					 <p class="parag">Característica</p>
					 <input type="text" class="form-control txtInfos" value="<%out.print(cambean.getCaracteristica());%>" disabled>
				</div>
				
				<div class="col-6 col-lg-6 col-md-6 col-sm-12 col-xs-12 conteudoInterno" id="divImg">
					<img id="imgCaminhao" src="images/<%out.print(cambean.getImagem());%>" class="img-fluid">
				</div>
			</div>
			
		</div>
	</div>
	
	</div>
	
	<% } %>
	
</body>
</html>