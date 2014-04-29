<%@ include file="/EQbase.jsp" %> 

      <div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h1><small><span style="color:#31708F">// </span> Informe a nova senha</small></h1>
          </div>
        </div><!-- /.row -->  
<form class="form-horizontal" action="<c:url value="/operador/salvarTrocaSenha"/>" method="post">
  <fieldset>
    <legend></legend>
    
    <div class="control-group warning">
    	<label class="control-label">Senha</label>
    	<div class="controls">
    		<input type="password" class="input-xlarge required"  name="senha" value="" >
		</div>
    </div>
            
    <button type="submit" class="btn btn-primary">Salvar</button>
    <a class="btn btn-danger" href="<c:url value="/operador/listarOperadores"/>" > Cancelar </a>
  </fieldset>
</form>


<%@ include file="/EQbaseFim.jsp" %> 