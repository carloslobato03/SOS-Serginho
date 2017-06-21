<!DOCTYPE html>
<html lang="en">
<%@ include file="PP.jsp"%>
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
    <div class="container">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="#">Forgot password?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form" action="LoginController" method="post">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="login-username" type="text" class="form-control" name="login" placeholder="username or email">                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="login-password" type="password" class="form-control" name="senha" placeholder="password">
                                    </div>
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember me
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                      <input id="btn-login" class="btn btn-success" value="Entrar" type="submit">

                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%" >
                                            Don't have an account! 
                                        <a href="#" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Sign Up Here
                                        </a>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
        <div id="signupbox" style="display:none; margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a></div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form" method="post" action="CadastroController">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>  
                                                                  
                                <div class="form-group">
                                
                                    <label for="login" class="col-md-3 control-label">Login: </label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="login" placeholder="Login">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="senha" class="col-md-3 control-label">Senha: </label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="senha" placeholder="Senha">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="nome" class="col-md-3 control-label">Nome: </label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="nome" placeholder="Nome">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="sobrenome" class="col-md-3 control-label">Sobrenome: </label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="sobrenome" placeholder="Sobrenome">
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">E-mail: </label>
                                    <div class="col-md-9">
                                        <input type="email" class="form-control" name="email" placeholder="exemplo@email.dominio">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="telefone" class="col-md-3 control-label">Telefone: </label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="telefone" placeholder="00012345678">
                                    </div>
                                </div>

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9">
                                        <button id="btn-signup" type="submit" class="btn btn-info"><i class="icon-hand-right"></i> Cadastrar</button>
                                    </div>
                                </div>
  
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 
    </div>
    
<script type="text/javascript">

</script>


</body>
</html>
