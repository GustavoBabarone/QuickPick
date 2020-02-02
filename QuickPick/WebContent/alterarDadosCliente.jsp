<%@ include file="topos/topoCliente.jsp" %>

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
	   		$('.idade').mask('000');
			});
    
    </script>


	<div class="container " id="tudo" style="margin-top: 100px;">
		<div class="row">
			<div class="col-12 col-lg-12 col-md-12 col-sm-12 col-xs-12">
			
				<hr>
				
					<h1 style="text-align: center;">Dados do Perfil</h1>
				
				<hr>
			
				<form action="requisicoes/alterarCliente.jsp" method="post"  style="text-align: center;">
				
					<input type="hidden" class="form-control" name="id" value="<%out.print(clientebean.getId());%>">
					<input type="hidden"   class="form-control" name="cpf" value="<%out.print(clientebean.getCpf());%>">
					
					<input type="text" class="form-control" name="senha" value="<%out.print(clientebean.getSenha());%>">
					<input type="text" class="form-control" name="nomeUser" value="<%out.print(clientebean.getNomeUsuario());%>">
					<input type="text" class="form-control" name="nomeComp" value="<%out.print(clientebean.getNomeCompleto());%>">
					<input type="text" class="form-control idade" name="idade" value="<%out.print(clientebean.getIdade());%>">
					
					<input type="text" class="form-control" name="img" value="<%out.print(clientebean.getImagem());%>">
					<input type="text" class="form-control" name="email" value="<%out.print(clientebean.getEmail());%>">
					<input type="text" class="form-control tel" name="tel" value="<%out.print(clientebean.getTelefone());%>">
					<input type="text" class="form-control" name="ende" value="<%out.print(clientebean.getEndereco());%>">
									
					<button class="btn btn-primary">Finalizar Alteração Perfil</button>
				
				</form>
				
			</div>	
		
		</div>
	</div>

</body>
</html>