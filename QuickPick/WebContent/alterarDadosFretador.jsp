<%@page import="bean.CaminhaoBean"%>
<%@page import="dao.CaminhaoDao"%>
<%@ include file="topos/topoFretista.jsp" %>


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
    
    <link href="css/estiloAlterarDados.css" rel="stylesheet">
    
    <!-- MASCARA -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="css/jquery.mask.min.js"></script>
    
    <script>
    
	 	// MÁSCARAS
		$(document).ready(function(){
	   		$('.tel').mask('00000-0000');
	   		$('.reg').mask('00000000000');
	   		$('.idade').mask('000');
	   		$('.placa').mask('SSS-0000');
			});
    
    </script>

	<%
	
	// OBTER DADOS DO CAMINHÃO
	CaminhaoDao camdao = new CaminhaoDao();
	CaminhaoBean cambean = camdao.obterDadosCaminhao(id);
	
	%>

	<div class="container" id="tudo" style="margin-top: 100px;">
		<div class="row">
			<div class="col-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
			
				<hr>
				
					<h1 style="text-align: center;">Dados do Perfil</h1>
				
				<hr>
			
				<form action="requisicoes/alterarFretador.jsp" method="post"  style="text-align: center;">
				
				<input type="hidden" class="form-control" name="id" value="<%out.print(fretbean.getId());%>">
				<input type="hidden"   class="form-control" name="cpf" value="<%out.print(fretbean.getCpf());%>">
				
				<input type="text" class="form-control" name="senha" value="<%out.print(fretbean.getSenha());%>">
				<input type="text" class="form-control" name="nomeUser" value="<%out.print(fretbean.getNomeUsuario());%>">
				<input type="text" class="form-control" name="nomeComp" value="<%out.print(fretbean.getNomeCompleto());%>">
				<input type="text" class="form-control idade" name="idade" value="<%out.print(fretbean.getIdade());%>">
				<input type="text" class="form-control reg" name="nR" value="<%out.print(fretbean.getNumeroRegistro());%>">
				
				<input type="hidden" class="form-control" name="img" value="<%out.print(fretbean.getImagem());%>">
				<input type="text" class="form-control" name="email" value="<%out.print(fretbean.getEmail());%>">
				<input type="text" class="form-control tel" name="tel" value="<%out.print(fretbean.getTelefone());%>">
				
				<textarea name="txtArea" class="form-control"><%out.print(fretbean.getDescricao());%></textarea>
				
				<button class="btn btn-primary">Finalizar Alteração Perfil</button>
				
				</form>
				
			</div>	
		
			<div class="col-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form action="requisicoes/alterarCaminhao.jsp" method="post"  style="text-align: center;">
				
				<hr>
				
					<h1 style="text-align: center;">Dados do Caminhão</h1>
				
				<hr>
				
					<input type="hidden" class="form-control" name="id" value="<%out.print(fretbean.getId());%>">
					
					<input type="hidden" class="form-control placa" name="placa" value="<%out.print(cambean.getPlaca());%>">
					<input type="hidden" class="form-control" name="modelo" value="<%out.print(cambean.getModelo());%>">
					<input type="text" class="form-control" name="cor" value="<%out.print(cambean.getCor());%>">
					<input type="text" class="form-control" name="taman" value="<%out.print(cambean.getTamanho());%>">
					<input type="text" class="form-control" name="carac" value="<%out.print(cambean.getCaracteristica());%>">
					
					<input type="hidden" class="form-control" name="img" value="<%out.print(cambean.getImagem());%>">
					
					<button class="btn btn-primary">Finalizar Alteração Caminhao</button>
				
				</form>
			
			</div>
		</div>
	</div>

</body>
</html>