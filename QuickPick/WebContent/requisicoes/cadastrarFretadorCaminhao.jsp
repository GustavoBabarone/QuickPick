<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@page import="dao.CaminhaoDao"%>
<%@page import="bean.FretadorBean"%>
<%@page import="dao.FretadorDao"%>


    <%
    
    // OBTER DADOS FRETISTA
    String nomeCompleto = request.getParameter("nomeCompletoFretador");
    String nomeUsuario = request.getParameter("nomeUsuarioFretador");
    String email = request.getParameter("emailFretador");
    String senha = request.getParameter("senhaFretador");
    int idade = Integer.parseInt(request.getParameter("idadeFretador"));
    String telefone = request.getParameter("telefoneFretador");
    String cpf = request.getParameter("cpfFretador");
    long numeroDeRegistro = Long.parseLong(request.getParameter("numeroRFretador"));
    String imagem = "perfil.jpg";
    String descricao = "Olá, estou usando a QuickPick!";
    
    // OBTER DADOS DO CAMINHÃO
    String placa = request.getParameter("Placa");
    String modelo = request.getParameter("modelo");
    
    if(modelo.equals("1")){
    	modelo = "Baú Refrigerado";
    }
    
	if(modelo.equals("2")){
		modelo = "Caminhão Carroceria";
	}
	
	if(modelo.equals("3")){
		modelo = "Caminhão Trucado";
	}
	
	if(modelo.equals("4")){
		modelo = "Baú Seis Rodas";
	}
    
    String cor = request.getParameter("Cor");
    String tamanho = request.getParameter("Tamanho");
    String carac = request.getParameter("carac");
    String imagemCaminhao = request.getParameter("nomeImg");
    
    // EXECUTAR AÇÃO DE CADASTRO FRETADOR
    FretadorDao fretdao = new FretadorDao();
    boolean sucesso1 = fretdao.cadastrarFretador(nomeUsuario, senha, nomeCompleto, idade, telefone, email, cpf, numeroDeRegistro, imagem, descricao);
    
    if(sucesso1 == true){
    	FretadorBean fretb = fretdao.obterDadosFretistaBALA(nomeUsuario, senha);
    	
    	// EXECUTAR AÇÃO DE CADASTRO CAMINHÃO
        CaminhaoDao camdao = new CaminhaoDao();
        boolean sucesso2 = camdao.cadastrarCaminhao(fretb.getId(), placa, modelo, cor, tamanho, carac, imagemCaminhao);
    	
        if(sucesso2 == true){
        
    	session.setAttribute("fretista", fretb);
    	response.sendRedirect("../index.jsp?msg=CadFretOk&id="+fretb.getId()+"&tipo=2");
    
        }
        
    }else{
    	response.sendRedirect("../cadastrar.jsp?msg=CadFretFalha");
    }
    %>