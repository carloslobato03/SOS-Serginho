<!DOCTYPE html>
<html lang="en">

<head>
<%@ include file="../slider.jsp"%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Up Tourney - Seja um Gamer Profissional</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

	<jsp:useBean id="player" scope="session"
		class="br.uptourney.model.Usuario"></jsp:useBean>

	<c:if test="${player.login == null }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Up Tourney</a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="../conheca.jsp">Conheça+</a></li>
					<li><a href="../Torneios.jsp">Torneios</a></li>
					<li><a href="../equipe.jsp">Minha Equipe</a></li>
					<li><a href="../organizacao.jsp">Organização</a></li>
					<li><a href="../suporte.jsp">Suporte</a></li>
					<li><h3><strong><c:out value="${player.login}"></c:out></strong></h3></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Jumbotron Header -->
		<header class="jumbotron hero-spacer">
			<h1>UpTourney!</h1>
			<p>Venha Participar Conosco!</p>
			<p>
				<a href="Torneios.jsp" class="btn btn-primary btn-large">Ver
					Torneios</a>
			</p>
		</header>

		<hr>

		<!-- Title -->
		<div class="row">
			<div class="col-lg-12">
				<h3>Torneios em destaque da semana</h3>
			</div>
		</div>
		<!-- /.row -->

		<!-- Page Features -->
		<div class="row text-center">

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img
						src="http://gamebug.pro/wp-content/uploads/2017/02/league_of_legends_logo_wallpaper_by_xlzipx-d7z4i38-800x500.jpg">
					<div class="caption">
						<h3>Copa Baiana de League of Legends</h3>
						<p>
							<font face="Courier New" color="Red">Data:31/02/2052</font> <font
								face="Courier New" color="Red">Premiação: <br>R$100
								em RP.
							</font>
						</p>
						<p>
							<a href="#" class="btn btn-primary">Participar Agora!</a> <a
								href="#" class="btn btn-default">Mais Informações</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img
						src="https://3.bp.blogspot.com/-o5Q8nk2qk7A/VQGYcZgAXqI/AAAAAAAAACA/pWulgu0qJdc/w800-h800/H1Z1-Wallpaper.jpg">
					<div class="caption">
						<h3>Copa Baiana de h1z1</h3>
						<p>
							<font face="Courier New" color="Red">Data:31/02/2052</font> <font
								face="Courier New" color="Red">Premiação: <br>R$500
								em RP.
							</font>
						</p>
						<p>
							<a href="#" class="btn btn-primary">Participar Agora!</a> <a
								href="#" class="btn btn-default">Mais Informações</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img
						src="http://moviesgamesandtech.com/wp-content/uploads/2016/06/Overwatch-3-800x500.jpg">
					<div class="caption">
						<h3>Copa Baiana de Overwatch</h3>
						<p>
							<font face="Courier New" color="Red">Data:31/02/2055</font> <font
								face="Courier New" color="Red">Premiação: <br>R$200
								em dinheiro.
							</font>
						</p>
						<p>
							<a href="#" class="btn btn-primary">Participar Agora!</a> <a
								href="#" class="btn btn-default">Mais Informações</a>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<img
						src="http://fraghero.com/wp-content/uploads/2016/07/csgogamblingcover.jpg">
					<div class="caption">
						<h3>Copa Baiana de CounterStrike Global Offensive</h3>
						<p>
							<font face="Courier New" color="Red">Data:31/02/2057</font> <font
								face="Courier New" color="Red">Premiação: <br>R$1000
								em dinheiro.
							</font>
						</p>
						<p>
							<a href="#" class="btn btn-primary">Participar Agora!</a> <a
								href="#" class="btn btn-default">Mais Informações</a>
						</p>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

		<hr>

		<!-- Footer -->
		<footer>
			<div class="row">
				<div class="col-lg-12">
					<p>Copyright &copy; Your Website 2014</p>
				</div>
			</div>
		</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

</body>

</html>
