



	<!-- HEADER -->
	<%@ include file="topos/topoPadrao.jsp" %>


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
	  
	  <!-- CSS DO MODAL E ALTERAÇÃO DA DESCRIÇÃO -->
	  <link href="css/estiloIndex.css" rel="stylesheet">
	


	<!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">
	
	<!-- Bootstrap css -->
    <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

	<!-- Libraries CSS Files -->
  	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  	<link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
   
   	<!-- Main Stylesheet File / EstilosLogin-->
   	<link href="css/estiloLogin.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
	
	<!-- CONTEÚDO PRINCIPAL DA PAGÍNA -->
 	<div class="container wow fadeInUp">
        <div class="login"> 
        	<div id="teste">
            <div style="background-image: url('images/Profitability2.jpg');" id="imagem"></div>

            <form class="formulario" id="imagem2" action="requisicoes/logar.jsp" method="post">
                
                <img src="images/quickpicklogo.png">
                <input style="background-image: url('images/house.png');" type="text" class="form-control" id="login" placeholder="Usuário" name="usuario" maxlength="50">
                <input style="background-image: url('images/key.png');" type="password" class="form-control" id="senha" placeholder="Senha" name="senha" maxlength="50">
                <button  class="btn btn-outline-info" id="logar">Entrar</button>
                
                <div class="esque">
                    <a href="#" id="esqueceu">Esqueceu sua Senha? Recuperar</a>
             	</div>
             	
	            <div class="cadas">
	               <a href="cadastrarUsuario.jsp" id="cadastro">Cadastre-se</a>
               	</div>
               	
            </form>
            
            </div>
        </div>
    </div><!-- FIM DI CONTEÚDO PRINCIPAL DA PAGÍNA -->

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


</body>
</html>