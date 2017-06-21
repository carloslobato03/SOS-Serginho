<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Up Tourney - Seja um Gamer Profissional</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/heroic-features.css" rel="stylesheet">
<%@ include file="PP2.jsp"%>

</head>
<body>

	<form id="equipeform" method="post" class="form-horizontal" action="CadEquipeController">
		<div class="form-group">
			<label class="col-xs-3 control-label">Nome da equipe:</label>
			<div class="col-xs-5">
				<input type="text" class="form-control"
					placeholder="Digite o nome que deseja editar da equipe" name="nomeEquipe" />
			</div>
		</div>
				<div class="form-group">
					<label class="col-xs-3 control-label">Caso Deseje editar o jogo da sua equipe Selecione o jogo: </label>
					<div class="col-xs-5 selectContainer">
						<select class="form-control" name="nomeJogo">
						<c:forEach var="t" items="${listJogo}">
							<option value="${t.id}">${t.nomeJogo}</option>
						</c:forEach>
					</select>
					</div>
				</div>

		<div class="form-group">
			<div class="col-xs-5 col-xs-offset-3">
				<button type="submit" class="btn btn-primary btn-large">Criar equipe</button>
			</div>
		</div>
	</form>
	<!-- Footer -->
	<hr>
	<div class="row">
		<div class="col-lg-12">
			<p>Copyright &copy; Site Feito em 2017</p>
		</div>
	</div>
</body>
</html>