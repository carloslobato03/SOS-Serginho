<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Up Tourney - Seja um Gamer Profissional</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/heroic-features.css" rel="stylesheet">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/PP2.jsp"%>

</head>
<body>

 <form id="orgform" method="post" class="form-horizontal">
   <div class="form-group">
     <label class="col-xs-3 control-label">Selecione o Jogo: </label>
     <div class="col-xs-5 selectContainer">
      <select class="form-control" name="nomeJogo">
      <c:forEach var="t" items="${listJogo}">
       <option value="${t.id}">${t.nomeJogo}</option>
      </c:forEach>
     </select>
     </div>
    </div>
  
  <div class="form-group">
   <label class="col-xs-3 control-label">Digite seu nickname do jogo:</label>
   <div class="col-xs-5">
    <input type="text" class="form-control"
     placeholder="Digite o seu nickname do jogo" name="nick" />
   </div>
  </div>
  <div class="form-group">
   <div class="col-xs-5 col-xs-offset-3">
    <button type="submit" class="btn btn-primary btn-large">Confirmar</button>
   </div>
  </div>
 </form>

 <script>
  $(document)
    .ready(
      function() {
       $('#equipeForm')
         .formValidation(
           {
            framework : 'bootstrap',
            icon : {
             valid : 'glyphicon glyphicon-ok',
             invalid : 'glyphicon glyphicon-remove',
             validating : 'glyphicon glyphicon-refresh'
            },
            excluded : ':disabled',
            fields : {
             name : {
              validators : {
               notEmpty : {
                message : 'O campo nickname é obrigatorio.'
               },
               }
              }
             },
               }
              }
             
           )
         .find('[name="tipo",name="jogos"]')
         .combobox().end()
      );
 </script>

 <!-- Footer -->
 <hr>
 <div class="row">
  <div class="col-lg-12">
   <p>Copyright &copy; Site Feito em 2017</p>
  </div>
 </div>
</body>
</html>