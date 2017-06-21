<!DOCTYPE html>
<html lang="en">
<%@ include file="PP2.jsp"%>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Login &amp; Signup forms in panel - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="contactform" class="form-horizontal"  method="post">                                                                                                  
            <div class="form-group">
			<label class="col-xs-3 control-label">Nome: </label>
			<div class="col-xs-5 selectContainer">
			<input type="text" class="form-control"
					placeholder="Nome" name="Nome" />
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-3 control-label">E-mail: </label>
			<div class="col-xs-5 selectContainer">
			<input type="email" class="form-control" name="email" placeholder="exemplo@email.dominio">
			</div>
		</div>
		<div class="form-group">
			<label class="col-xs-3 control-label">Contato: </label>
			<div class="col-xs-5 selectContainer">
			<textarea name="contato" placeholder="Sua mensagem..."></textarea>
			</div>
		</div>


	         	   <div class="form-group">
			<div class="col-xs-5 col-xs-offset-3">
				<button type="submit" class="btn btn-primary btn-large">Enviar</button>
			</div>
		</div>
                                
					</form>
					

	<script>
		$(document)
				.ready(
						function() {
							$('#contatoForm')
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
																message : 'O nome é obrigatorio'
															},
														}
													},
															}
														}
													}
											)
									.combobox().end()
						);
	</script>
    

</body>
</html>
