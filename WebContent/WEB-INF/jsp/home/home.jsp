<%@ include file="/EQbase.jsp" %> 
<%@ page import="java.util.*,easyquote.modelo.*,easyquote.hibernate.*, teste.*" %>
      <div id="page-wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h1>Bem-Vindo <small>Sistema de Cota��es de Contratos</small></h1>
            <ol class="breadcrumb">
                          <li class="active"><i class="fa fa-dashboard"></i>  Seguro  // Simples // R�pido</li>
            </ol>
            <div class="alert alert-success alert-dismissable">
              <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
               Com <b>Easy Quote</b> voc� conseguir� obter lucro no final de todas as suas cota��es, al�m de trazer mais praticidade, rapidez e seguran�a nas negocia��es burocr�ticas de contrata��o.
            </div>
          </div>
        </div><!-- /.row -->       
 
        <div class="row">
          <div class="col-lg-3">
            <div class="panel panel-info">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">${contratosAditivos}</p>
                    <p class="announcement-text">Contratos Ativos</p>
                  </div>
                </div>
              </div>
              <a href="<c:url value="/contrato/listarContratos"/>">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Ver Contratos</div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-warning">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-tasks fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">${cotacoesPendentes}</p>
                    <p class="announcement-text">Cota��es em aberto</p>
                  </div>
                </div>
              </div>
              <a href="<c:url value="/cotacao/listarCotacaos"/>">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Visualizar Cota��es
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-success">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-check fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">${cotacoesAndamento}</p>
                    <p class="announcement-text">Pedidos entregues</p>
                  </div>
                </div>
              </div>
              <a href="<c:url value="/pedido/listarPedidos"/>">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Visualizar Pedidos
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
          <div class="col-lg-3">
            <div class="panel panel-danger">
              <div class="panel-heading">
                <div class="row">
                  <div class="col-xs-6">
                    <i class="fa fa-comments fa-5x"></i>
                  </div>
                  <div class="col-xs-6 text-right">
                    <p class="announcement-heading">${pedidos}</p>
                    <p class="announcement-text">Pedidos n�o entregues</p>
                  </div>
                </div>
              </div>
              <a href="<c:url value="/pedido/listarPedidos"/>">
                <div class="panel-footer announcement-bottom">
                  <div class="row">
                    <div class="col-xs-6">
                      Visualizar Pedidos
                    </div>
                    <div class="col-xs-6 text-right">
                      <i class="fa fa-arrow-circle-right"></i>
                    </div>
                  </div>
                </div>
              </a>
            </div>
          </div>
        </div><!-- /.row -->    
       
        <h1><small><span style="color:#31708F">//</span> Como funciona o Processo ? </small></h1>

              <img src="<c:url value="/css/images/steps.png"/>" />         
        </div>

<%@ include file="/EQbaseFim.jsp" %> 