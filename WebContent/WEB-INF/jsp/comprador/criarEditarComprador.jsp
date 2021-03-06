<%@page import="easyquote.controller.ListaCotacaoController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/EQbase.jsp" %> 
<%@ page import="java.util.*,easyquote.modelo.*,easyquote.hibernate.*, teste.*" %>

<script type="text/javascript">	
	function validarCPF( cpf ){
		var filtro = /^\d{3}.\d{3}.\d{3}-\d{2}$/i;
		
		if(!filtro.test(cpf))
		{
			window.alert("CPF inv�lido. Tente novamente.");
			return false;
			document.getElementById("comprador.cpf").focus();
		}
	   
		cpf = remove(cpf, ".");
		cpf = remove(cpf, "-");
		
		if(cpf.length != 11 || cpf == "00000000000" || cpf == "11111111111" ||
			cpf == "22222222222" || cpf == "33333333333" || cpf == "44444444444" ||
			cpf == "55555555555" || cpf == "66666666666" || cpf == "77777777777" ||
			cpf == "88888888888" || cpf == "99999999999")
		{
			window.alert("CPF inv�lido. Tente novamente.");
			return false;
			document.getElementById("comprador.cpf").focus();
	   }

		soma = 0;
		for(i = 0; i < 9; i++)
		{
			soma += parseInt(cpf.charAt(i)) * (10 - i);
		}
		
		resto = 11 - (soma % 11);
		if(resto == 10 || resto == 11)
		{
			resto = 0;
		}
		if(resto != parseInt(cpf.charAt(9))){
			window.alert("CPF inv�lido. Tente novamente.");
			return false;
			document.getElementById("comprador.cpf").focus();
		}
		
		soma = 0;
		for(i = 0; i < 10; i ++)
		{
			soma += parseInt(cpf.charAt(i)) * (11 - i);
		}
		resto = 11 - (soma % 11);
		if(resto == 10 || resto == 11)
		{
			resto = 0;
		}
		
		if(resto != parseInt(cpf.charAt(10))){
			window.alert("CPF inv�lido. Tente novamente.");
			return false;
			document.getElementById("comprador.cpf").focus();
		}
		
		return true;
	 }
	 
	function remove(str, sub) {
		i = str.indexOf(sub);
		r = "";
		if (i == -1) return str;
		{
			r += str.substring(0,i) + remove(str.substring(i + sub.length), sub);
		}
		
		return r;
	}

	/**
	   * MASCARA ( mascara(o,f) e execmascara() ) CRIADAS POR ELCIO LUIZ
	   * elcio.com.br
	   */
	function mascara(o,f){
		v_obj=o
		v_fun=f
		setTimeout("execmascara()",1)
	}

	function execmascara(){
		v_obj.value=v_fun(v_obj.value)
	}

	function cpf_mask(v){
		v=v.replace(/\D/g,"")                 //Remove tudo o que n�o � d�gito
		v=v.replace(/(\d{3})(\d)/,"$1.$2")    //Coloca ponto entre o terceiro e o quarto d�gitos
		v=v.replace(/(\d{3})(\d)/,"$1.$2")    //Coloca ponto entre o setimo e o oitava d�gitos
		v=v.replace(/(\d{3})(\d)/,"$1-$2")   //Coloca ponto entre o decimoprimeiro e o decimosegundo d�gitos
		return v
	}
</script>

<div id="page-wrapper">
  <div class="row">
    <div class="col-lg-12">
      <h1><small><span style="color:#31708F">//</span> Criar comprador </small></h1>
    </div>
  </div><!-- /.row -->

<form class="form-horizontal" action="<c:url value="/comprador/salvarComprador"/>" method="post">
  <fieldset>
    <div class="control-group" style="display: none;">
      <label class="control-label">Operador</label>
      <div class="controls">    	
		   <input type="text" class="input-xlarge numero-decimal" name="comprador.operador.id" value="${comprador.operador.id}">   	
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">CPF</label>
      <div class="controls">
        <input type="text" class="input-xlarge numero-decimal" name="comprador.cpf" id="comprador.cpf" onblur="javascript: validarCPF(this.value);" onkeypress="javascript: mascara(this, cpf_mask);"  maxlength="14" value="${comprador.cpf}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">Telefone</label>
      <div class="controls">
        <input type="text" class="input-xlarge" name="comprador.telefone" value="${comprador.telefone}">
      </div>
    </div>
    <div class="control-group">
      <label class="control-label">Email</label>
      <div class="controls">
        <input type="email" class="input-xlarge" name="comprador.email" value="${comprador.email}">
      </div>
    </div>

    <button type="submit" class="btn btn-primary">Salvar</button>
  </fieldset>
</form>
</div>

<%@ include file="/EQbaseFim.jsp" %> 
