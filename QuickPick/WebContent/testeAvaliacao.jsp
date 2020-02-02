<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>

	<!-- CSS BOOTSTRAP -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<style>
	
	.rate {
	    float: left;
	    height: 46px;
	    padding: 0 10px;
	}
	.rate:not(:checked) > input {
	    position:absolute;
	    top:-9999px;
	}
	.rate:not(:checked) > label {
	    float:right;
	    width: 30px;
	    overflow:hidden;
	    white-space:nowrap;
	    cursor:pointer;
	    font-size:30px;
	    color:#ccc;
	}
	.rate:not(:checked) > label:before {
	    content: 'A';
	}
	.rate > input:checked ~ label {
	    color: #ffc700;   
	}
	.rate:not(:checked) > label:hover,
	.rate:not(:checked) > label:hover ~ label {
	    color: #deb217;  
	}
	.rate > input:checked + label:hover,
	.rate > input:checked + label:hover ~ label,
	.rate > input:checked ~ label:hover,
	.rate > input:checked ~ label:hover ~ label,
	.rate > label:hover ~ input:checked ~ label {
	    color: #c59b08;
	}
	
	</style>
	
	<script>
	
		// FUNÇÃO DE VALIDAÇÃO DAS ESTRELAS
		function validaRadio() {
			
	  	// VARIÁVEIS
	  	var estrela5 = document.getElementById("star5");	
	 	var estrela4 = document.getElementById("star4");	
	 	var estrela3 = document.getElementById("star3");	
	 	var estrela2 = document.getElementById("star2");	
	 	var estrela1 = document.getElementById("star1");
	 	var txt = document.getElementById("txtAvalia");
			
	  	if(estrela5.checked == false && estrela4.checked == false &&
	  	   estrela3.checked == false && estrela2.checked == false &&
	  	   estrela1.checked == false) {
	    
			alert('Por favor, selecione a avaliação.');
	    	return false;
	  	}
	  
	  	if(estrela1.checked == true) {
		    
	  		txt.value = estrela1.value;
			alert("Péssimo");
	    	return true;
	  	}
	  
	  	if(estrela2.checked == true) {
		 
	  		txt.value = estrela2.value;
		 	alert("Ruim");
		 	return true;
	  	}
	  
	  	if(estrela3.checked == true) {
		    
	  		txt.value = estrela3.value;
		 	alert("Regular");
	     	return true;
	 	}
	  
	  	if(estrela4.checked == true) {
		 
	  		txt.value = estrela4.value;
		 	alert("Bom");
		 	return true;
	  	}
	  
	  	if(estrela5.checked == true) {
			 
	  		txt.value = estrela5.value;
		 	alert("Ótimo!");
		 	return true;
	  	}
		  
		  return true;
		}
		
		</script>


</head>
<body>

	<form action="requisicoes/cadastrarAvaliacao.jsp" method="post">
		<div class="rate" id="sessaoEstrelas">
		    <input type="radio" id="star5" name="rate" value="5" onclick="return validaRadio();"/>
		    <label for="star5" title="text"></label>
		    
		    <input type="radio" id="star4" name="rate" value="4" onclick="return validaRadio();"/>
		    <label for="star4" title="text"></label>
		    
		    <input type="radio" id="star3" name="rate" value="3" onclick="return validaRadio();"/>
		    <label for="star3" title="text"></label>
		    
		    <input type="radio" id="star2" name="rate" value="2" onclick="return validaRadio();"/>
		    <label for="star2" title="text"></label>
		    
		    <input type="radio" id="star1" name="rate" value="1" class="star" onclick="return validaRadio();"/>
		    <label for="star1" title="text"></label>
		    
		</div>
		
		<input type="text" placeholder="Avaliação aqui..." id="txtAvalia" name="avalia">    
		<input type="text" value="6" name="idClie"> 
		<input type="text" value="7" name="idFret"> 
		    
		<input type="submit" value="Enviar">
		
	</form>	

</body>
</html>