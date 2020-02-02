	<!--HEADER-->
	<%@ include file="topos/topoCliente.jsp" %>

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
  <link rel="stylesheet" href="css/bootstrap.css">
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
	
  <link href="css/estiloAnuncio.css" rel="stylesheet">
  
  <!-- MASCARA -->
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="css/jquery.mask.min.js"></script>

	<script>
		
	// MÁSCARAS
	$(document).ready(function(){
   		$('.quant').mask('000');
		});
	
		window.onload = function(){		
		// ADICIONANDO EVENTO AO BOTÃO
		document.getElementById("btn1000grau").addEventListener("click", mudarPagina);
		}
		
		window.onload = function(){	
		// ADICIONANDO EVENTO AO BOTÃO
		document.getElementById("voltarBotao").addEventListener("click", mudarPagina2);
		}
		
	function proxPag() {
		
	   var proc = 		 document.getElementById("proc");
	   var on = 		 document.getElementById("on");
	   var venom = 		 document.getElementById("venom");
	   var extreme = 	 document.getElementById("extreme");
	   var btn = 		 document.getElementById("btn1000grau");
	   var voltarBotao = document.getElementById("voltarBotao");
	   
	   proc.style.display =        "none";
	   on.style.display =          "none";
	   venom.style.display =       "block";
	   extreme.style.display =     "block";
	   btn.style.display =         "none";
	   voltarBotao.style.display = "block";
	}
	
	function anteriorPag() {
		
		   var proc = 	 	 document.getElementById("proc");
		   var on = 	 	 document.getElementById("on");
		   var venom = 		 document.getElementById("venom");
		   var extreme = 	 document.getElementById("extreme");
		   var voltarBotao = document.getElementById("voltarBotao");
		   var btn = 		 document.getElementById("btn1000grau");
		   
		   proc.style.display =        "block";
		   on.style.display =          "inline-flex";
		   venom.style.display =       "none";
		   extreme.style.display =     "none";
		   btn.style.display =         "block";
		   btn.style.textAlign =       "center";
		   voltarBotao.style.display = "none";
		        
		}
	
	function trocarImg(){
		
		// VARIÁVEIS
		var cbxEsq = document.getElementById("cbxEscolha").value;
		var tam = document.getElementById("tam");
		var nomeImg = document.getElementById("nomeImg");
		var imagemCaminhao = document.getElementById("imagemCaminhao");
		
		if(cbxEsq == 0){
			alert("Selecione uma opção válida!");
			tam.value = "";
			nomeImg.value = "";
			imagemCaminhao.setAttribute("src","img/anuncios/frete.png");
		}
		
		if(cbxEsq == 1){
			
			tam.value = "Poucos objetos";
			nomeImg.value = "caixasSM.png";
			imagemCaminhao.setAttribute("src","img/anuncios/caixasSM.png");
		}
		
		if(cbxEsq == 2){
			
			tam.value = "Quantidade normal";
			nomeImg.value = "caixaMD.png";
			imagemCaminhao.setAttribute("src","img/anuncios/caixaMD.png");
		}
		
		if(cbxEsq == 3){
			
			tam.value = "Muitos objetos";
			nomeImg.value = "caixasLG.png";
			imagemCaminhao.setAttribute("src","img/anuncios/caixasLG.png");
		}
		
	}
	
	</script>

	
  
	
	<div class="container wow fadeIn " id="total">
		<div class="row " id="linha1">
		
			<div class="col-lg-12">
				<h1 id="titulo">Anuncie o frete que deseja realizar!</h1>
			</div>
		</div>
		
		<div class="row" id="linha2">
			<div class="col-6 col-lg-6 col-md-6 col-sm-12" id="ladoEsquerdo">
				<form id="formulario" action="requisicoes/cadastrarAnuncioo.jsp" method="post">
						
					<input type="hidden" value="<%out.print(clieb.getId());%>" name="idUser">
						
					<div class="row">
						<div id="proc" class="col-12 col-lg-12 col-md-12 col-sm-12">
							<h3 class="h3seg">Coloque um titulo para sua publicação</h3>
							<input type="text" name="nomePub" placeholder="*Maximo 20 caracteres*" class="form-control" maxlength="22" required>
								
							<h3 class="h3seg">Quantos objetos irão ser levados ?</h3>
							<input type="text"  name="quant" placeholder="Quantidade de objetos" class="form-control quant" maxlength="3" required>
							
							<h3 class="h3seg">Informe os locais</h3>
							<input type="text" name="ende1" placeholder="Local de partida" class="form-control" required>
							<input type="text" name="ende2" placeholder="Local do Destino" class="form-control" required>
						</div>
					</div>
						
					<div class="row" id="on">
					
					</div>
					
					 <div class="row" id="venom">
					 	<div class="col-12">
							<h3 class="h3seg" id="h3Esp">Descreva os objetos que serão levados</h3>
							<textarea required name="descr" id="txtArea" placeholder="Faça uma descrição breve de seu anúncio..."></textarea>
					  	
					  		<h3 class="h3seg" id="h3Esp">Escolha a imagem do anúncio</h3>
					  		<select onchange="trocarImg()" id="cbxEscolha">
				        		<option value="0">Escolha uma foto</option>
				        		<option value="1">Poucos objetos</option>
				        		<option value="2">Quantidade normal</option>
				        		<option value="3">Muitos objetos</option>
			        		</select>
	        		
			        		<input id="tam"  type="hidden" name="tam">
				       		<input id="nomeImg" type="hidden" name="nomeImg">
					  	
					  	</div>
					 </div>
					 
					<div class="row" id="extreme" style="text-align: center;">
						<div class="col-12">
							<button class="btn btn-primary" id="btnFinal">Anunciar o Frete!</button>
						</div>
					</div>
					
					<hr>
				
				</form>
					
					<div class="row">
						<div class="col-12" id="voltarBotao">
							<input id="voltarBotao1" type="button" value="Voltar" onclick="anteriorPag()">
						</div>
					</div>
			
					<div class="row" id="linhaProxPasso">
						<div class="col-lg-12 col-md-12 col-sm-12">
							<input id="btn1000grau" type="button" value="Proximo passo" onclick="proxPag()">
						</div>
					</div>
			
				</div>
					
				<div class="col-lg-6 col-md-6 col-sm-12" id="ladoDireito">
					
					<div class="row" id="linhaImg">	
						<div class="col-12 col-lg-12 col-md-12 col-sm-12" id="colImg">	
							<img alt="ImagemAnuncio" src="img/anuncios/frete.png" id="imagemCaminhao">
						</div>
					</div>
				
				</div>
			</div>
 		</div>	
 		

 
</body>
</html>