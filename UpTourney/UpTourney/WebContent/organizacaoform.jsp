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

	<form id="orgform" method="post" class="form-horizontal">
		<div class="form-group">
			<label class="col-xs-3 control-label">Nome da Organização:</label>
			<div class="col-xs-5">
				<input type="text" class="form-control"
					placeholder="Digite o nome da organização" name="nomeOrganizacao" />
			</div>
		</div>
		
		<div class="form-group">
			<label class="col-xs-3 control-label">Contato:</label>
			<div class="col-xs-5">
				<input type="text" class="form-control"
					placeholder="Contato" name="contato" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-xs-5 col-xs-offset-3">
				<button type="submit" class="btn btn-primary btn-large">Criar
					Organização</button>
			</div>
		</div>
	</form>

	<hr>
	<div class="row">
		<div class="col-lg-12">
			<p>Copyright &copy; Site Feito em 2017</p>
		</div>
	</div>
</body>
</html>