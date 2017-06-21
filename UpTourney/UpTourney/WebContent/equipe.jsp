<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<jsp:useBean id="eqp" class="br.uptourney.dao.EquipeDao" scope="session"/>

<title>Up Tourney - Seja um Gamer Profissional</title>

<link href="css/bootstrap.min.css" rel="stylesheet">

<link href="css/heroic-features.css" rel="stylesheet">
<%@ include file="PP2.jsp"%>

<style type="text/css">
ul {

list-style-type: none;

}
</style>

</head>
<body>
	<div class="container">
		
		<header class="jumbotron hero-spacer">
			<h1>Não possui equipe ainda?</h1>
			<p></p>
			<p>
				<a href="CadEquipeController" class="btn btn-primary btn-large">Crie
					aqui a sua equipe.</a>
					
			</p>
		</header>
		<hr>
		
		<!--
			 POR ENQUANTO ESTA LISTANDO TODAS AS EQUIPES...
			SEM LINK 
			TEM QUE TENTAR COLOCAR O HREF PRA UMA PAGINA ( CRIAR UMA PAGINA PRA EQUIPE ) 
		 -->
		<p>Equipes Globais: </p>
		<c:if test="${player.login != null }">
			<div class="form-group">
					<c:forEach var="x" items="${eqp.listarEquipes()}">
							<ul>
								<li><a href="#"><c:out value="${x.nomeEquipe}"></c:out></a><li>
							</ul>
					</c:forEach>
			</div>
		</c:if>		

		<!-- Page Features -->
		<hr>
		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Site Feito em 2017</p>
				</div>
			</div>
		</footer>
	</div>

</body>
</html>