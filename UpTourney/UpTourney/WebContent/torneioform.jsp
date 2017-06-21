<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
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


	<form id="torneioform" method="post" class="form-horizontal" action="CadTorneioController">
		<div class="form-group">
			<label class="col-xs-3 control-label">Nome do Torneio:</label>
			<div class="col-xs-5">
				<input type="text" class="form-control"
					placeholder="Digite o nome do torneio" name="nomeTorneio" />
			</div>
		</div>

				<div class="form-group">
					<label class="col-xs-3 control-label">Organizações: </label>
					<div class="col-xs-5 selectContainer">
						<select class="form-control" name="nomeOrganizacao">
						<c:forEach var="x" items="${list}">
							<option value="${x.id}">${x.nome}</option>
						</c:forEach>
					</select>
					</div>
				</div>
				
		<div class="form-group">
			<label class="col-xs-3 control-label">Data: </label>
			<div class="col-xs-5 selectContainer">
			<input type="text" class="form-control"
					placeholder="dd/mm/yyyy" name="data" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-xs-3 control-label">Vagas do Torneio: </label>
			<div class="col-xs-5 selectContainer">
			<input type="text" class="form-control"
					placeholder="Vagas do meu torneio" name="qtdEquipe" />
			</div>
		</div>
		<div class="form-group">
					<label class="col-xs-3 control-label">Jogos: </label>
					<div class="col-xs-5 selectContainer">
						<select class="form-control" name="nomeJogo">
						<c:forEach var="t" items="${listJogo}">
							<option value="${t.id}">${t.nomeJogo}</option>
						</c:forEach>
					</select>
					</div>
				</div>
		<div class="form-group">
			<label class="col-xs-3 control-label">Regras: </label>
			<div class="col-xs-5 selectContainer">
			<textarea name="regras" placeholder="Minhas Regras são..."></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-3 control-label">Premiação: </label>
			<div class="col-xs-5 selectContainer">
			<input type="text" class="form-control"
					placeholder="R$500.00" name="premiacao" />
			</div>
		</div>


		<div class="form-group">
			<div class="col-xs-5 col-xs-offset-3">
				<button type="submit" class="btn btn-primary btn-large">Criar Torneio</button>
			</div>
		</div>
	</form>

	<hr>

	<!-- Footer -->

	<div class="row">
		<div class="col-lg-12">
			<p>Copyright &copy; Site Feito em 2017</p>
		</div>
	</div>
</body>
</html>