<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html lang="pt-br">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Easy Quote</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/EQ-css/bootstrap.css"/>"  rel="stylesheet">
    <!-- Add custom CSS here -->
    <link href="<c:url value="/EQ-css/sb-admin.css"/>" rel="stylesheet">
    <link href="<c:url value="/EQ-css/datepicker.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/font-awesome/css/font-awesome.min.css"/>" >
    <!-- Page Specific CSS -->
    <link rel="stylesheet" href="<c:url value="/EQ-css/morris-0.4.3.min.css"/>" >
    <!-- JavaScript -->
    <link type="text/css" href="<c:url value="/css/jquery-ui-1.9.2.custom.css"/>" rel="stylesheet" />
    <script type="text/javascript" src="<c:url value="/js/jquery-1.7.2.min.js"/>"></script>    
    <script src="<c:url value="/EQ-js/bootstrap.js"/>"></script>
    <script src="<c:url value="/EQ-js/datepicker/js/bootstrap-datepicker.js"/>"></script>
 
  </head>

  <script>
  
  $(document).ready(function() {

  	var login = $("#login").val();
  	if(login == "adam"){
  		$(".img-circle").attr("src", "<c:url value='/imagens/adam.jpg'/>");
  		
  	}else if(login == "samuel"){
  		$(".img-circle").attr("src", "<c:url value='/imagens/samuel.jpg'/>");
  		
  	}else{
  		$(".img-circle").attr("src", "<c:url value='/imagens/profile-pic.jpg'/>");
  	}
  	
  	
  	
  });
  </script>
  <body>

<!--
		 Input hidden para guardar as informa��es das funcionalidades que o operador logado pode acessar.
		Ser� usado para montar o submenu somente com as op��es que o operador pode enxergar
		 -->
		<input id="codigosFuncionalidadesPermitidas" type="hidden" value="${sessaoFuncionalidades.codigosFuncionalidadesSeparadosPorVirgula}" >

		
    <div id="wrapper">

      <!-- Sidebar -->
      <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <a class="navbar-brand" href="<c:url value="/home/home"/>" style="color:white; font-family:Segoe UI;">Easy Quote</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
         
        
         
		 <ul class="nav navbar-nav side-nav">
		 <li class="side-user hidden-xs">
		                <input type="hidden" id="login" value="${sessaoOperador.operador.login}" >
                        <img class="img-circle" src="<c:url value="/imagens/profile-pic.jpg"/>" alt="">
                        <p class="welcome"><i class="fa fa-key"></i> Logado como</p>
                        <p class="name tooltip-sidebar-logout">${sessaoOperador.operador.postoGraduacao} <span class="last-name" >#${sessaoOperador.operador.login}</span> <a data-original-title="Logout" id="open_45009172" data-popup-ordinal="1" style="color: inherit" class="logout_open" href="<c:url value="/login/logout"/>" data-toggle="tooltip" data-placement="top" title=""><i class="fa fa-sign-out"></i></a></p>
                        <div class="clearfix"></div>
           </li>         	   
          	<c:forEach var="modulo" items="${sessaoFuncionalidades.modulos}">       
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-caret-square-o-down"></i> ${modulo.key} <b class="caret"></b></a>
              <ul class="dropdown-menu">
              	<c:forEach var="item" items="${modulo.value}">
					<li><a href="<c:url value="/${item.codigo}"/>">${item.nomeFuncionalidade}</a></li>
                </c:forEach>
              </ul>
            </li>          
            </c:forEach>          
          </ul>

			<a class="navbar-brand" href="<c:url value="/home/sobre"/>" style="color:white; font-family:Segoe UI; font-size: 15px">Quem somos</a>

          <ul class="nav navbar-nav navbar-right navbar-user">
            <li class="dropdown user-dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="text-transform: uppercase;"><i class="fa fa-user"></i> ${sessaoOperador.operador.postoGraduacao} ${sessaoOperador.operador.login}<b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="<c:url value="/login/trocarPropriaSenha"/>"><i class="fa fa-gear"></i> Troca Senha</a></li>
                <li class="divider"></li>
                <li><a href="<c:url value="/login/logout"/>"><i class="fa fa-power-off"></i>Sair</a></li>
              </ul>
            </li>	
          </ul>
		  
		  
	  
        </div> 
      </nav>

 
		<div id="divconteudo" style="margin-left: 30px; margin-right: 30px;" >
		
		<c:if test="${not empty sucesso}">
			<div class="alert alert-success">
				${sucesso}
			</div>
		</c:if>
		
		<c:if test="${not empty errors}">
			<div class="alert alert-error">
				<c:forEach items="${errors }" var="error">
					<strong>${error.category }</strong> - ${error.message } <br>
				</c:forEach>
			</div>
		</c:if>
		</div>
		