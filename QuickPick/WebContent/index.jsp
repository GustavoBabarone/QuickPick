
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
	
	<%
	
	// VARIÁVEL DE VALIDAÃO
	String msg = "";
	int tipo = 0;
	
	// TENTATIVA
	try{
		
		// ATRIBUIR VALOR A VARIÁVEL
		msg = request.getParameter("msg").toString();
		tipo = Integer.parseInt(request.getParameter("tipo"));

	}catch(Exception erro){}
	
	// CONDICIONAL
  	if(msg.equals("Sair") || msg.equals("") || msg.equals("ExcluirFretOk") 
  		|| msg.equals("ExcluirClienteOK")){	
	
	%>
	
		<%@ include file="topos/topoPadrao.jsp" %>
	
	<%  
  	
  	}else if(msg.equals("CadClieOk") || msg.equals("CadFretOk") 
  		  || msg.equals("LogFret")   || msg.equals("LogClie") 
  		  || msg.equals("infoFretistas") || msg.equals("perfilFret") 
  	      || msg.equals("AltFretOk") || msg.equals("Anuncios")
  	      || msg.equals("Principal") || msg.equals("AnuncioOk")
  	      || msg.equals("AltCamOk")  || msg.equals("AltClieOk")){
  
  	%>
  
	  	<% if(tipo == 1){ %>     
	        
	        <%@ include file="topos/topoCliente.jsp" %>
        
	    <% }else if(tipo == 2){ %><!-- FIM DO TIPO 1 -->
	        	
	        <%@ include file="topos/topoFretista.jsp" %>
	        	
	        <% if(fretbean.getDescricao().equals("Olá, estou usando a QuickPick!")){ %>
	        
	    <!-- jquery -->
		<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
		  
		<!-- bootstrap -->
		<script type="text/javascript" src="js/bootstrap.js"></script>
		
		<!-- chamada da função -->
		<script type="text/javascript">
			$(window).on('load',function(){
			  $('#modalExemplo').modal('show');
			});
		</script>
         
	        <% } %><!-- FIM DO DESCRIÇÃO -->
	        	
		<% } %><!-- FIM DO TIPO 2 -->
     
  	<% } %><!-- FIM DOS MSG  -->
  
   <!-- Modal -->
    <div class="modal fade" id="modalExemplo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel"><span id="quickModal">Quick</span><span>Pick</span></h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            Por que não colocar uma descrição sobre seus serviços e adicionar uma foto de perfil?
         	<div class="form-group"></div>
         	 <button type="button" class="btn btn-primary" data-dismiss="modal">Continuar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fim do Modal -->
    
  <!--==========================
    Hero Section
  ============================-->
  <section id="hero" class="wow fadeIn">
    <div class="hero-container">
      <h1>Seja Bem-Vindo ao QuickPick</h1>
      <h2>O meio de transporte via Frete perfeito para você !</h2>
      <img src="img/img-inicio.png" alt="Hero Imgs">
      <a href="mapa.jsp" class="btn-get-started scrollto">Simular Frete</a>
      <div class="btns">
        <a href="#"><i class="fa fa-apple fa-3x"></i> App Store</a>
        <a href="#"><i class="fa fa-play fa-3x"></i> Google Play</a>
        
      </div>
    </div>
  </section><!-- #hero -->

  <!--==========================
    Get Started Section
  ============================-->
  <section id="get-started" class="padd-section text-center wow fadeInUp">

    <div class="container">
      <div class="section-title text-center">

        <h2>Vantagens ao usar  QuickPick </h2>
        <p class="separator">Aqui vão algumas vantagens ao usar nosso site.</p>

      </div>
    </div>

    <div class="container">
      <div class="row">

        <div class="col-md-6 col-lg-4">
          <div class="feature-block">

            <img src="img/svg/smartphone.png" alt="img" class="img-fluid">
            <h4>MultiPlataforma</h4>
            <p>Nosso site proporciona multiplataformas, com suporte IOS, Android e PC.</p>

          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="feature-block">

            <img src="img/svg/people.png" alt="img" class="img-fluid">
            <h4>Seja atendido por pessoas qualificadas </h4>
            <p>Os motoristas do QuickPick são selecionados a dedo para trabalhar conosco, tudo para proporcionar conforto ao fazer o frete.</p>

          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="feature-block">

            <img src="img/svg/truck.png" alt="img" class="img-fluid">
            <h4>Suporte rápido e eficiente</h4>
            <p>Nossos atendentes são ágeis no atendimento, resolvendo seus problemas com sucesso imediato!</p>
           
          </div>
        </div>

      </div>
    </div>

  </section>

  <!--==========================
    About Us Section
  ============================-->
  <section id="about-us" class="about-us padd-section wow fadeInUp">
    <div class="container">
      <div class="row justify-content-center">

        <div class="col-md-5 col-lg-3">
          <img src="img/about-img.png" alt="About">
        </div>

        <div class="col-md-7 col-lg-5">
          <div class="about-content">

            <h2><span>QuickPick</span>Acesse de onde Estiver </h2>
            <p>O QuickPick realiza simulações de frete e proporciona ferramentas que aproximam o contato entre cliente e fretistas. Com vantages ao acessar o aplicativo.
            </p>

            <ul class="list-unstyled">
              <li><i class="fa fa-angle-right"></i>Design Criativo</li>
              <li><i class="fa fa-angle-right"></i>Inovador</li>
              <li><i class="fa fa-angle-right"></i>Fácil de usar</li>
              <li><i class="fa fa-angle-right"></i>Rápido</li>
              <li><i class="fa fa-angle-right"></i>Seguro</li>
            </ul>

          </div>
        </div>

      </div>
    </div>
  </section>

  <!--==========================
    Blog Section
  ============================-->
  <section id="blog" class="padd-section wow fadeInUp">

    <div class="container">
      <div class="section-title text-center">

        <h2>Atualizações</h2>
        <p class="separator">Últimas novidades sobre QuickPick.</p>

      </div>
    </div>

    <div class="container">
      <div class="row">

        <div class="col-md-6 col-lg-4">
          <div class="block-blog text-left">
            <a href="#"><img src="img/blog/blog-image-1.jpg" alt="img"></a>
            <div class="content-blog">
              <h4><a href="#">0.3 - QuickPick participará da Mostra de Talentos! Venha conhecer!</a></h4>
              <span>09, Out 2019</span>
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="block-blog text-left">
            <a href="#"><img src="img/blog/blog-image-3.jpg" class="img-responsive" alt="img"></a>
            <div class="content-blog">
              <h4><a href="testeAvaliacao.jsp">0.2 - Atualização do QuickPick adiciona avaliação do usuario sobre fretista.</a></h4>
              <span>12, Set 2019</span>
            
            </div>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="block-blog text-left">
            <a href="#"><img src="img/blog/blog-image-2.jpg" class="img-responsive" alt="img"></a>
            <div class="content-blog">
              <h4><a href="#">0.1 - QuickPick agora proporciona um sistema de conversas entre cliente e fretista.</a></h4>
              <span>05, Ago 2019</span>
              
            </div>
          </div>
        </div>

      </div>
    </div>
  </section>

  <!--==========================
    Newsletter Section
  ============================-->
  <section id="newsletter" class="newsletter text-center wow fadeInUp">
    <div class="overlay padd-section">
      <div class="container">

        <div class="row justify-content-center">
          <div class="col-md-9 col-lg-6">
            <form class="form-inline" method="POST" action="#">

              <input type="email" class="form-control " placeholder="Insira seu e-mail" name="email">
              <button type="submit" class="btn btn-default"><i class="fa fa-location-arrow"></i>Receba Notícias</button>

            </form>

          </div>
        </div>

          <ul class="list-unstyled">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
          </ul>

      </div>
    </div>
  </section>

  <!--==========================
    Contact Section
  ============================-->
  <section id="contact" class="padd-section wow fadeInUp">

    <div class="container">
      <div class="section-title text-center">
        <h2>Contato</h2>
        <p class="separator">Dúvidas ou informações, contate-nos.</p>
      </div>
    </div>

    <div class="container">
      <div class="row justify-content-center">

        <div class="col-lg-3 col-md-4">

          <div class="info">
            <div>
              <i class="fa fa-map-marker"></i>
              <p>Rua 7 de Setembro, 1590<br>Blumenau, Santa Catarina</p>
            </div>

            <div class="email">
              <i class="fa fa-envelope"></i>
              <p>QuickPick@Gmail.com</p>
            </div>

            <div>
              <i class="fa fa-phone"s></i>
              <p>+55 (47) 4002-8922</p>
            </div>
          </div>

          <div class="social-links">
            <a href="https://twitter.com/QuickPick19" target="_blank" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
            <a href="https://instagram.com/quickpick_fretes/" target="_blank" class="instagram"><i class="fa fa-instagram"></i></a>
            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
          </div>

        </div>

        <div class="col-lg-5 col-md-8">
          <div class="form">
            <div id="sendmessage">Sua mensagem foi enviada, Obrigado!</div>
            <div id="errormessage"></div>
            <form action="" method="post" role="form" class="contactForm">
              <div class="form-group">
                <input type="text" name="name" class="form-control" id="name" placeholder="Nome" data-rule="minlen:4" data-msg="Por favor insira pelo menos 4 letras." />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="email" class="form-control" name="email" id="email" placeholder="Email" data-rule="email" data-msg="Por favor insira e-mail vÃ¡lido." />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Assunto" data-rule="minlen:4" data-msg="Por favor insira pelo menos 8 letras." />
                <div class="validation"></div>
              </div>
              <div class="form-group">
                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Por favor escreva algo para nós" placeholder="Menssagem"></textarea>
                <div class="validation"></div>
              </div>
              <div class="text-center"><button type="submit">Enviar</button></div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section><!-- #contact -->

  <!--==========================
    Footer
  ============================-->
  <footer class="footer">
    <div class="container">
      <div class="row">

        <div class="col-md-12 col-lg-4">
          <div class="footer-logo">

            <a class="navbar-brand wow fadeIn" href="#hero">QuickPick</a>
            

          </div>
        </div>

        <div class="col-sm-6 col-md-3 col-lg-2">
          <div class="list-menu">

            <h4>SOBRE NÓS</h4>

            <ul class="list-unstyled">
              <li><a href="#">Conheça-nos</a></li>
              <li><a href="#">Itens em destaque</a></li>
              <li><a href="#">Politica de privacidade</a></li>
            </ul>

          </div>
        </div>

			<div class="col-sm-6 col-md-3 col-lg-2">
          <div class="list-menu">

            <h4>Suporte</h4>

            <ul class="list-unstyled">
              <li><a href="#">Perguntas frequentes</a></li>
              <li><a href="#">Serviço ao cliente</a></li>
              <li><a href="#">Contato</a></li>
            </ul>

          </div>
        </div>

      </div>
    </div>

    <div class="copyrights">
      <div class="container">
        <p>&copy; Copyright© QuickPick Company. Todos os direitos reservados.</p>
        <div class="credits">
          
		Projetado por <a>Equipe QuickPick</a> | Distribuido por <a>QuickPick</a>        </div>
      </div>
    </div>

  </footer>

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

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

	<!-- TESTE -->

</body>
</html>
