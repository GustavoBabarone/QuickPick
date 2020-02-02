<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>

<%@ include file="topos/topoPadrao.jsp" %>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/estiloCadastro.css" rel="stylesheet">

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

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	
	<!-- Libraries CSS Files -->
  	<link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  	<link href="lib/owlcarousel/assets/owl.theme.default.min.css" rel="stylesheet">
  	<link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  	<link href="lib/animate/animate.min.css" rel="stylesheet">
  	
  	<!-- Bootstrap -->
	<link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
	
	 <!-- Google Fonts -->
  	 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Roboto:100,300,400,500,700|Philosopher:400,400i,700,700i" rel="stylesheet">

	<!-- DropDown -->
	 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	 <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	 <link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- MASCARA -->
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="css/jquery.mask.min.js"></script>

	<script>
	
	// MÁSCARAS
	$(document).ready(function(){
   		$('.cpf').mask('000.000.000-00');
   		$('.tel').mask('00000-0000');
   		$('.reg').mask('00000000000');
   		$('.idade').mask('000');
   		$('.placa').mask('SSS-0000');
		});
	
	// DEIXAR VISÍVEL E INFISÍVEL OS FORMS DE CLIENTE E FRETISTA - 1
	function verificarCheckBox1() {
		var op1 = document.getElementById("customControlValidation3"); 
	    var formulario1 = document.getElementById("f1");
	    
	    if(op1.checked == true){
	    	formulario1.style.display = "block";
	    	document.getElementById("f2").style.display = "none";
	    }else{
	    	formulario1.style.display = "none";
	    	document.getElementById("f2").style.display = "block";
	    }
	        
	}
	
	// DEIXAR VISÍVEL E INFISÍVEL OS FORMS DE CLIENTE E FRETISTA - 2
	function verificarCheckBox2() {
	    var op2 = document.getElementById("customControlValidation2"); 
	    var formulario2 = document.getElementById("f2");
	    
	    if(op2.checked == true) {
	    	formulario2.style.display = "block";
	    	document.getElementById("f1").style.display = "none";
	    }else{
	    	formulario2.style.display = "none";
	    	document.getElementById("f1").style.display = "block";
	    }
	    
	// ATRIBUIR FUNÇÃO QUANDO CARREGAR A PÁGINA    
    window.onload = function(){
    	document.getElementById("cadFret").addEventListener("click", proximoPasso);
    }  
    
	}
	
	// FUNÇÃO DO PRÓXIMO PASSO DE CADASTRO DO FRETISTA
	function proximoPasso() {
		
		// VARIÁVEIS DE TÍTULO PRI E CHECKBOX
		var tituloPrin = document.getElementById("tituloPrin");
		var radioEscolha = document.getElementById("radioEscolha");
		
		// IMG PADRÃO (CELULAR)
		var imgPadrao = document.getElementById("imgPadrao");
		
		// VARIÁVEIS DE CAMPOS DE FRETISTA
		var txt01 = document.getElementById("txt01");
		var txt02 = document.getElementById("txt02");
		var txt03 = document.getElementById("txt03");
		var txt04 = document.getElementById("txt04");
		var txt05 = document.getElementById("txt05");
		var txt06 = document.getElementById("txt06");
		var txt07 = document.getElementById("txt07");
		var txt08 = document.getElementById("txt08");
		
		// VARIÁVEIS DE COMBOBOX E TÍTULO SEG
		var caminhaoTipo = document.getElementById("caminhaoTipo");
		var cbxEscolha = document.getElementById("cbxEscolha");
		
		// VARIÁVEIS DE CAMPOS DE CAMINHÃO
		var p01 = document.getElementById("p01");
		var p02 = document.getElementById("p02");
		var p03 = document.getElementById("p03");
		var p04 = document.getElementById("p04");
		
		// BOTÃO QUE FINALIZA O CADASTRO
		var cadFret = document.getElementById("cadFret");
		
		// IMAGEM COM OS TIPO DE CAMINHÃO
		var img = document.getElementById("imgSAGRADA");
		
		// BOTÕES DE PROXIMO PASSO E VOLTAR PASSO
		var passoFrente = document.getElementById("passoFrente");
		var passoTras = document.getElementById("passoTras");
		
		img.style.display = "block";
		img.setAttribute("src","images/int1.png");
		
		// CAMPOS FRETISTAS INVISÍVEIS
		txt01.style.display = "none";
		txt02.style.display = "none";
		txt03.style.display = "none";
		txt04.style.display = "none";
		txt05.style.display = "none";
		txt06.style.display = "none";
		txt07.style.display = "none";
		txt08.style.display = "none";
		
		// IMAGEM PADRÃO INVISÍVEIS
		imgPadrao.style.display = "none";
		
		// TÍTULO E CHECKBOX INVISÍVEIS
		tituloPrin.style.display = "none";
		radioEscolha.style.display = "none";
		
		// BOTÃO DE VOLTAR VISÍVEL
		passoFrente.style.display = "none";
		passoTras.style.display = "block";
		
		// TÍTULOS VISÍVEIS
		caminhaoTipo.style.display = "block";
		cbxEscolha.style.display = "block";
		
		// CAMPOS DE CAMINHÃO VISÍVEIS
		p01.style.display = "block";
		p02.style.display = "block";
		p03.style.display = "block";
		p04.style.display = "block";
		
		// BOTÃO DE CADASTRAR TUDO VISÍVEIS
		cadFret.style.display = "block";
		
	}
	
	// FUNÇÃO DE VOLTAR PASSO DE CADASTRO DO FRETISTA
	function voltarPasso() {
		
		// VARIÁVEIS DE TÍTULO PRI E CHECKBOX
		var tituloPrin = document.getElementById("tituloPrin");
		var radioEscolha = document.getElementById("radioEscolha");
		
		// IMG PADRÃO (CELULAR)
		var imgPadrao = document.getElementById("imgPadrao");
		
		// VARIÁVEIS DE CAMPOS DE FRETISTA
		var txt01 = document.getElementById("txt01");
		var txt02 = document.getElementById("txt02");
		var txt03 = document.getElementById("txt03");
		var txt04 = document.getElementById("txt04");
		var txt05 = document.getElementById("txt05");
		var txt06 = document.getElementById("txt06");
		var txt07 = document.getElementById("txt07");
		var txt08 = document.getElementById("txt08");
		
		// VARIÁVEIS DE COMBOBOX E TÍTULO SEG
		var caminhaoTipo = document.getElementById("caminhaoTipo");
		var cbxEscolha = document.getElementById("cbxEscolha");
		
		// VARIÁVEIS DE CAMPOS DE CAMINHÃO
		var p01 = document.getElementById("p01");
		var p02 = document.getElementById("p02");
		var p03 = document.getElementById("p03");
		var p04 = document.getElementById("p04");
		
		// BOTÃO QUE FINALIZA O CADASTRO
		var cadFret = document.getElementById("cadFret");
		
		// IMAGEM COM OS TIPO DE CAMINHÃO
		var img = document.getElementById("imgSAGRADA");
		
		// BOTÕES DE PROXIMO PASSO E VOLTAR PASSO
		var passoFrente = document.getElementById("passoFrente");
		var passoTras = document.getElementById("passoTras");
		
		img.style.display = "none";
		
		// CAMPOS FRETISTAS INVISÍVEIS
		txt01.style.display = "block";
		txt02.style.display = "block";
		txt03.style.display = "block";
		txt04.style.display = "block";
		txt05.style.display = "block";
		txt06.style.display = "block";
		txt07.style.display = "block";
		txt08.style.display = "block";
		
		// IMAGEM PADRÃO INVISÍVEIS
		imgPadrao.style.display = "inline-flex";
		
		// TÍTULO E CHECKBOX INVISÍVEIS
		tituloPrin.style.display = "block";
		radioEscolha.style.display = "inline-flex";
		
		// BOTÃO DE VOLTAR VISÍVEL
		passoFrente.style.display = "block";
		passoTras.style.display = "none";
		
		// TÍTULOS VISÍVEIS
		caminhaoTipo.style.display = "none";
		cbxEscolha.style.display = "none";
		
		// CAMPOS DE CAMINHÃO VISÍVEIS
		p01.style.display = "none";
		p02.style.display = "none";
		p03.style.display = "none";
		p04.style.display = "none";
		
		// BOTÃO DE CADASTRAR TUDO VISÍVEIS
		cadFret.style.display = "none";
		
	}
	
	// TROCAR A IMG DO TIPO DE CAMINHÃO PELA COMBO-BOX
	function trocarImg(){
		
		// 
		var cbxEsq = document.getElementById("cbxEscolha").value;
		var modelo = document.getElementById("modelo");
		var nomeImg = document.getElementById("nomeImg");
		
		if(cbxEsq == 0){
			alert("Selecione uma opção válida!");
			modelo.value = "";
			nomeImg.value = "";
		}
		
		if(cbxEsq == 1){
			
			modelo.value = "1";
			nomeImg.value = "c4.png";
		}
		
		if(cbxEsq == 2){
			
			modelo.value = "2";
			nomeImg.value = "c2.png";
		}
		
		if(cbxEsq == 3){
			
			modelo.value = "3";
			nomeImg.value = "c3.png";
		}
		
		if(cbxEsq == 4){
			
			modelo.value = "4";
			nomeImg.value = "c1.png";
		}
		//
		
		// VARIÁVEIS
		var img = document.getElementById("imgSAGRADA"); 
		var tipoImg = parseInt(document.getElementsByTagName("select")[0].value);
		
		// CONDICIONAL
		switch(tipoImg){
		
		case 0:
			img.setAttribute("src","images/int1.png");
			img.style.display = "block";
			img.style.border = "none";
		break;
		
		case 1:
			img.setAttribute("src","images/c4.png");
			img.style.display = "block";
			img.style.borderLeft = "solid 1px #1E92FF";
		break;
		
		case 2:
			img.setAttribute("src","images/c2.png");
			img.style.display = "block";
			img.style.borderLeft = "solid 1px #1E92FF";
		break;
		
		case 3:
			img.setAttribute("src","images/c3.png");
			img.style.display = "block";
			img.style.borderLeft = "solid 1px #1E92FF";
		break;
		
		case 4:
			img.setAttribute("src","images/c1.png");
			img.style.display = "block";
			img.style.borderLeft = "solid 1px #1E92FF";
		break;
		
		}
	}
	
	function tipoCaminhao(){
		
		
		
	}
	
	</script>
	
	<%
	
		// VARIÁVEIS
		String user = "";
		int tipo = 0;
		
		try{
			
			// OBTER MSG - USER - TIPO
			user = request.getParameter("user");
			tipo = Integer.parseInt(request.getParameter("tipo"));
			
		}catch(Exception erro){}
		
	%>
    
	<div class="cadastro container wow fadeInUp">
    <div class="teste row">
  
  		<!-- PARTE DA ESQUERDA COMEÇO -->
        <div class="parteCadastro col-12 col-lg-6 col-md-12 col-sm-12">
          
            <h1 class="user" id="tituloPrin">Escolha o tipo de usuario</h1>
            
            <div class="row" id="radioEscolha">
	            <div class="custom-control custom-radio col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
	                <input type="radio" class="custom-control-input" id="customControlValidation2" value= "1" name="radio-stacked" required onclick="verificarCheckBox1()" checked>
	                <label class="custom-control-label" for="customControlValidation2">Cliente</label>
	            </div>
	              
	            <div class="custom-control custom-radio mb-3 col-6 col-lg-6 col-md-6 col-sm-6 col-xs-6">
	                <input type="radio" class="custom-control-input" id="customControlValidation3" value= "2" name="radio-stacked" required onclick="verificarCheckBox2()">
	                <label class="custom-control-label" for="customControlValidation3" id="fretRadio">Fretista</label>
	             </div> 
             </div>
             
             <form class="formulario" action="requisicoes/cadastrarCliente.jsp" method="post" id="f2">
	            <input type="text" style="background-image: url('images/user.png');" name="nomeCompletoCliente" class="form-control" placeholder="Nome Completo" maxlength="50" required>
	            <input type="text" style="background-image: url('images/user.png');" name="nomeUsuarioCliente" class="form-control" placeholder="Nome de Usuario" maxlength="50" required>
	            <input type="text" style="background-image: url('images/user.png');" name="idadeCliente" class="form-control idade" placeholder="Idade" required>
	            <input type="email" style="background-image: url('images/email.png');" name="emailCliente" class="form-control" placeholder="Email" maxlength="50" required>
	            <input type="password" style="background-image: url('images/key.png');" name="senhaCliente" class="form-control" placeholder="Senha" maxlength="50" required>
	            <input type="text" style="background-image: url('images/phone.png');" name="telefoneCliente" class="form-control tel" placeholder="Telefone" required>
	            <input type="text" style="background-image: url('images/id.png');" name="cpfCliente" class="form-control cpf" placeholder="CPF" required>
	            <input type="text" style="background-image: url('images/house.png');" name="enderecoCliente" class="form-control" placeholder="Endereço" maxlength="50" required>
	            
	            <hr>
	            
	            <button class="btn btn-primary" id="cadastrar">Cadastrar Usuario</button>
	       	</form>
             
             <div id="f1" style="display:none">
		        <form class="formulario f1b" action="requisicoes/cadastrarFretadorCaminhao.jsp" method="post">
		            <input id="txt01" type="text" style="background-image: url('images/user.png');" name="nomeCompletoFretador" maxlength="50" class="form-control" placeholder="Nome Completo" required>
		            <input id="txt02" type="text" style="background-image: url('images/user.png');" name="nomeUsuarioFretador" maxlength="50" class="form-control" placeholder="Nome de Usuario" required>
		            <input id="txt03" type="text" style="background-image: url('images/user.png');" name="idadeFretador" class="form-control idade" placeholder="Idade" required>
		            <input id="txt04" type="email" style="background-image: url('images/email.png');" name="emailFretador" maxlength="50" class="form-control" placeholder="Email" required>
		            <input id="txt05" type="password" style="background-image: url('images/key.png');" name="senhaFretador" maxlength="50" class="form-control" placeholder="Senha" required>
		            <input id="txt06" type="text" style="background-image: url('images/phone.png');" name="telefoneFretador" class="form-control tel" placeholder="Telefone" required>
		            <input id="txt07" type="text" style="background-image: url('images/id.png');" name="cpfFretador" class="form-control cpf" placeholder="CPF" required>
		            <input id="txt08" type="text" style="background-image: url('images/house.png');" name="numeroRFretador" class="form-control reg" placeholder="Número de registro" required>
		       		
		       		<h1 class="user" id="caminhaoTipo" style="display: none;">Escolha seu tipo de caminhão</h1>
		       		
		       		<select onchange="trocarImg()" id="cbxEscolha" style="display: none;">
		        		<option value="0">Escolha um caminhão</option>
		        		<option value="1">Baú Refrigerado</option>
		        		<option value="2">Caminhão Carroceria</option>
		        		<option value="3">Caminhão Trucado</option>
		        		<option value="4">Báu Seis Rodas</option>
	        		</select>
	        		
	        		<input id="modelo"  type="hidden" name="modelo">
		       		<input id="nomeImg" type="hidden" name="nomeImg">
		       		
		       		<input id="p01" type="text" style="background-image: url('images/caminhao.png'); display: none;" name="Placa" maxlength="8" class="form-control placa" placeholder="Placa" onkeyup="this.value = this.value.toUpperCase()" required>
					<input id="p02" type="text" style="background-image: url('images/cor.png'); display: none;"      name="Cor" class="form-control" placeholder="Cor" required>
					<input id="p03" type="text" style="background-image: url('images/tamanho.png'); display: none;"  name="Tamanho" class="form-control" placeholder="Tamanho" required>
					<input id="p04" type="text" style="background-image: url('images/caracter.png'); display: none;" name="carac" class="form-control" placeholder="Carcaterística" required>
					
					<button id="cadFret" style="display: none;" class="btn btn-primary">Finalizar Cadastro</button>
	        
	        	<hr>
	        
	        </form>
	        
	        <div class="row" id="passoFrente">
		     	<div class="col-12">
		       		<input type="button" class="btn btn-primary" onclick="proximoPasso()" value="Próximo passo">  
		     	</div>	   
			 </div>	
		     
		     <div class="row" id="passoTras" style="display: none;">
		     	<div class="col-12">
		       		<input type="button" class="btn btn-primary" onclick="voltarPasso()" value="Voltar passo">
				 </div>	   
			 </div>	
			      
		     </div>
	         
	  	</div><!-- PARTE DA ESQUERDA FIM -->
	  	
	  	<!-- PARTE DA DIREITA COMEÇO -->
	  	<div class="col-12 col-lg-6 col-md-12 col-sm-12" id="sumir2">
	  		
	  		<div class="row" id="imgPadrao">  	
	  			<div class="col-12" id="col12">
	  				<img src="images/celular.png" class="img-fluid" id="imagemCelular">
		  		</div>
		  	</div>
		  	
		  	<div class="row" id="rowImgSagrada"> 	
		  		<div class="col-12 col-lg-12 col-md-12 col-sm-12" id="divImgSagrada">
		  			<img id="imgSAGRADA">
		  		</div>
		  	</div>
		  	
		</div><!-- PARTE DA DIREITA FIM -->
		  	 	
	  </div> 
	</div>

</body>
</html>