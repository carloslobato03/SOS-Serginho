<!DOCTYPE html>
<html lang="en">
<head>
    <title>Up Tourney - Seja um Gamer Profissional</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        /*  Reset & General
---------------------------------------------------------------------- */
* { margin: 0px; padding: 0px; }
#view-code{
  color:#89a2b5;    
  opacity:0.7;
  font-size:14px;
  text-transform:uppercase;
  font-weight:700;
  text-decoration:none;
  position:absolute;top:480px;
  left:50%;margin-left:-38px;
  z-index:200;
}
#view-code:hover{color:#5aadef; opacity:1}
 
#content{
    width:740px;
    margin:150px auto 0;
    text-align:left;
}
.tile{  
    width:360px;
    height:285px;
    background:#fff;
    border-radius:5px;
    box-shadow:0px 2px 3px -1px rgba(151, 171, 187, 0.7);
    float:left;
    position:relative;
    overflow:hidden;
  transform-style: preserve-3d;
 
}
.circle{
    background:#364b5b;
    position:absolute;
    right: 28px;
    top: 33px;
    width: 0px;
    height: 0px;
    border-radius:50%;
    opacity:0.9;
    z-index:2;
    -webkit-transition: all 250ms ease-out;
       -moz-transition: all 250ms ease-out;
        -ms-transition: all 250ms ease-out;
         -o-transition: all 250ms ease-out;
            transition: all 250ms ease-out;
}
#tile1.animate .circle{
  right: -346px;
  top: -371px;
  width: 800px;
  height: 800px;
    -webkit-transition: all 250ms ease-out;
       -moz-transition: all 250ms ease-out;
        -ms-transition: all 250ms ease-out;
         -o-transition: all 250ms ease-out;
            transition: all 250ms ease-out;
}
#tile1 div.settings-form{display:none;opacity:0;}
 
 
div.settings-form{z-index:3;}
.wrapper{transform-style: preserve-3d;position:absolute;top:0;left:0;height:285px;width:360px;}
.tile:hover{
    box-shadow:0px 4px 10px -1px rgba(151, 171, 187, 0.7);
    .transition(all 400ms ease);
}
#tile1{
    margin-right:20px;
}
.header{
    border-bottom:1px solid #ebeff2;
    padding:19px 0;
    text-align:center;
    color:#59687f;
    font-size:600;
    font-size:19px;
    position:relative;
}
#tile1 .settings-form .header{border-color:#65747f; color:#fff;}
.settings{
    width: 22px;
    height: 22px;
    position: absolute;
    top: 23px;
    right: 19px;
    fill:#d4d9dd;
}
.settings:hover{
    cursor:pointer;
}
.dates{
    border:1px solid #ebeff2;
    border-radius:5px;
    padding:20px 0px;
    margin:37px 20px 0;
    font-size:16px;
    color:#5aadef;
    font-weight:600;   
    overflow:auto;
}
.dates div{
    float:left;
    width:50%;
    text-align:center;
    position:relative;
}
.dates strong,
.stats strong{
    display:block;
    color:#adb8c2;
    font-size:12px;
    font-weight:700;
}
.dates span{
    width:5px;
    height:40px;
    position:absolute;
    right:0;
    top:0; 
    background:#ebeff2;
}
.stats{
    border-top:1px solid #ebeff2;
    background:#f7f8fa;
    overflow:auto;
    padding:15px 0;
    font-size:16px;
    color:#59687f;
    font-weight:600;   
    margin-top: 36px;
    border-radius: 0 0 5px 5px;
}
.stats div{
    border-right:1px solid #ebeff2;
    width:119px;
    float:left;
    text-align:center
}
.stats div:nth-of-type(3){border:none;}
 
 
.close{
    position:absolute;
    top:23px;
    right:18px;
    width:30px;
    height:30px;
    cursor:pointer;
}
.cx, .cy{
    background:#000000;
    position:absolute;
    width:0px;
    top:11px;
    right:13px;
    height:2px;
    -webkit-transition: all 250ms ease-in-out;
       -moz-transition: all 250ms ease-in-out;
        -ms-transition: all 250ms ease-in-out;
         -o-transition: all 250ms ease-in-out;
            transition: all 250ms ease-in-out;
}
#tile1 .cx, #tile1 .cy{background:#a0b3c2;}
.cx.s1, .cy.s1{
    right:0;   
    width:22px;
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
.cy.s2{
    -ms-transform: rotate(50deg);
    -webkit-transform: rotate(50deg);
    transform: rotate(50deg);        
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
.cy.s3{
    -ms-transform: rotate(45deg);
    -webkit-transform: rotate(45deg);
    transform: rotate(45deg);        
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
.cx.s1{
    right:0;   
    width:22px;
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
.cx.s2{
    -ms-transform: rotate(140deg);
    -webkit-transform: rotate(140deg);
    transform: rotate(140deg);       
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
.cx.s3{
    -ms-transform: rotate(135deg);
    -webkit-transform: rotate(135deg);
    transform: rotate(135deg);       
    -webkit-transition: all 100ease-out;
       -moz-transition: all 100ms ease-out;
        -ms-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
 
#tile1 form div, #tile1 button{opacity:0;position:relative;top:-20px;}
form div{
    border-bottom:1px solid #ebeff2;
    padding:18px 10px 17px 22px;
}
#tile1 form div{border-color:#65747f;}
form div.short{
    border-bottom:none;
    border-right:1px solid #ebeff2;
    float:left;
    width:147px;
}
#tile1 form div.short{border-color:#65747f;}
form div.short:nth-of-type(3){border:none;}
form div.short input{width:135px;}
form div label{
    color:#adb8c2;
    font-size:11px;
    font-weight:700;
    display:block;
}
#tile1 form div label{color:#a0b3c2;}
form div input{
    color:#59687f;
    font-size:18px;
    font-weight:400;
    border:none;
    outline:none;
    margin-top:4px;
    font-family:"Open Sans", sans-serif;
}
#tile1 form div input{color:#fff; background:none;}
button{
    background-color:#59aef1;
    font-family:"Open Sans", sans-serif;
    color:#fff;
    font-weight:600;
    font-size:16px;
    text-transform:uppercase;
    letter-spacing:1px;
    width:100%;
    padding:22px 0 19px;   
    border:none;
    border-radius: 0 0 5px 5px;
}
button:hover{
  cursor:pointer;
  background:#47a2ea;
}
#make-3D{
    position: relative;
    perspective: 400px;
    width:360px;
    height:290px;
    float:left;
    transform-style: preserve-3d;
}
#make-3D .tile{
    position:absolute;
    top:0;
    left:0;
    -webkit-transition: all 100ms ease-out;
       -moz-transition: all 100ms ease-out;
         -o-transition: all 100ms ease-out;
            transition: all 100ms ease-out;
}
#back{
    display:none;
    transform: rotateY( 180deg );
}
div.tile.flip-10{
     -webkit-transform: rotateY( -10deg );
         -moz-transform: rotateY( -10deg );
           -o-transform: rotateY( -10deg );
              transform: rotateY( -10deg );
               transition:  50ms ease-out;         
}
div.tile.flip90{
     -webkit-transform: rotateY( 90deg );
         -moz-transform: rotateY( 90deg );
           -o-transform: rotateY( 90deg );
              transform: rotateY( 90deg );
               transition:  100ms ease-in;         
}
div.tile.flip190{
     -webkit-transform: rotateY( 190deg );
         -moz-transform: rotateY( 190deg );
           -o-transform: rotateY( 190deg );
              transform: rotateY( 190deg );
               transition:  100ms ease-out;            
}
div.tile.flip180{
     -webkit-transform: rotateY( 180deg );
         -moz-transform: rotateY( 180deg );
           -o-transform: rotateY( 180deg );
              transform: rotateY( 180deg );
               transition:  150ms ease-out;            
}
div.ends{color:#2ECC71;}
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<%@ include file="PP2.jsp"%>
<body background="https://images7.alphacoders.com/533/533430.jpg">  
 
     <div id="content">        
         <div id="make-3D">
             <div class="tile">
                 <div id="front">
                    <div class="header">Copa Baiana de H1Z1</div>
                                <svg class="settings" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                                     width="25px" height="23px" viewBox="0 0 21.544 21.508" enable-background="new 0 0 21.544 21.508" xml:space="preserve">
                                <g>
                                    <g>
                                        <path d="M19.181,7.801L19.083,7.77c-0.086-0.234-0.182-0.465-0.285-0.689l0.047-0.092c0.354-0.43,0.547-0.967,0.547-1.529
                                            c0-0.643-0.25-1.246-0.705-1.699l-0.852-0.854c-0.293-0.293-0.779-0.781-1.582-0.781c-0.736,0-1.352,0.439-1.615,0.662
                                            L14.55,2.832c-0.225-0.105-0.455-0.199-0.689-0.285l-0.031-0.1c-0.119-1.227-1.15-2.172-2.395-2.172h-1.156
                                            c-1.219,0-2.242,0.918-2.387,2.113l-0.01,0.023C7.616,2.506,7.358,2.611,7.106,2.729L6.991,2.67
                                            C6.446,2.238,5.886,2.238,5.544,2.238c-0.643,0-1.246,0.25-1.701,0.705L3.026,3.758C2.571,4.211,2.321,4.816,2.321,5.459
                                            c0,0.561,0.191,1.098,0.543,1.525l0.049,0.098C2.81,7.305,2.716,7.533,2.63,7.768L2.526,7.801
                                            c-1.225,0.121-2.168,1.152-2.168,2.395v1.156c0,1.242,0.943,2.273,2.168,2.393l0.105,0.035c0.084,0.234,0.18,0.463,0.281,0.686
                                            l-0.049,0.098c-0.352,0.428-0.543,0.965-0.543,1.523c0,0.643,0.25,1.248,0.705,1.701l0.816,0.816
                                            c0.438,0.439,1.059,0.691,1.703,0.691c0.566,0,1.1-0.188,1.52-0.529l0.098-0.049c0.225,0.104,0.453,0.197,0.686,0.281l0.035,0.105
                                            c0.121,1.225,1.152,2.166,2.395,2.166h1.156c1.242,0,2.271-0.941,2.393-2.164l0.035-0.107c0.234-0.084,0.463-0.18,0.688-0.283
                                            l0.092,0.047c0.422,0.344,0.957,0.533,1.525,0.533c0.643,0,1.264-0.252,1.703-0.689l0.816-0.818
                                            c0.455-0.453,0.705-1.059,0.705-1.703c0-0.559-0.193-1.096-0.547-1.525l-0.047-0.092c0.104-0.225,0.199-0.455,0.283-0.689
                                            l0.1-0.033c1.227-0.117,2.172-1.148,2.172-2.393v-1.156C21.353,8.951,20.407,7.92,19.181,7.801z M19.833,11.352
                                            c0,0.473-0.367,0.861-0.838,0.885c-0.066,0.004-0.133,0.016-0.197,0.035l-0.549,0.18c-0.234,0.076-0.416,0.262-0.49,0.496
                                            c-0.127,0.404-0.289,0.801-0.484,1.176c-0.113,0.217-0.113,0.475-0.004,0.693l0.26,0.512c0.031,0.061,0.068,0.115,0.113,0.166
                                            c0.15,0.164,0.229,0.369,0.229,0.592c0,0.236-0.092,0.459-0.26,0.627l-0.818,0.818c-0.301,0.301-0.902,0.316-1.217,0.031
                                            c-0.051-0.045-0.107-0.084-0.168-0.115l-0.512-0.258c-0.219-0.111-0.477-0.109-0.693,0.004c-0.369,0.191-0.764,0.354-1.17,0.482
                                            c-0.232,0.072-0.414,0.252-0.492,0.482l-0.184,0.553c-0.023,0.064-0.035,0.133-0.039,0.201c-0.025,0.471-0.414,0.838-0.885,0.838
                                            h-1.156c-0.471,0-0.859-0.367-0.885-0.838c-0.004-0.068-0.016-0.135-0.039-0.201L9.171,18.16c-0.076-0.232-0.26-0.412-0.494-0.484
                                            c-0.406-0.129-0.797-0.289-1.162-0.48c-0.111-0.057-0.23-0.086-0.352-0.086c-0.117,0-0.232,0.025-0.34,0.08l-0.518,0.256
                                            c-0.063,0.031-0.119,0.07-0.172,0.117c-0.314,0.285-0.916,0.27-1.217-0.033l-0.816-0.816c-0.168-0.166-0.26-0.391-0.26-0.627
                                            c0-0.223,0.078-0.428,0.227-0.592c0.045-0.051,0.084-0.107,0.115-0.17l0.258-0.518c0.109-0.219,0.105-0.475-0.006-0.689
                                            c-0.191-0.369-0.354-0.762-0.48-1.166c-0.072-0.232-0.252-0.414-0.482-0.492l-0.553-0.186c-0.064-0.021-0.133-0.033-0.201-0.037
                                            c-0.471-0.025-0.84-0.414-0.84-0.885v-1.156c0-0.473,0.369-0.861,0.84-0.885c0.068-0.004,0.137-0.018,0.201-0.039L3.47,9.088
                                            C3.7,9.01,3.88,8.826,3.954,8.596c0.127-0.408,0.289-0.799,0.48-1.164C4.548,7.215,4.55,6.959,4.44,6.74L4.183,6.223
                                            c-0.031-0.061-0.07-0.119-0.115-0.17C3.919,5.889,3.841,5.684,3.841,5.459c0-0.236,0.092-0.457,0.26-0.625l0.816-0.816
                                            c0.168-0.168,0.391-0.26,0.627-0.26c0.281,0,0.398,0.01,0.525,0.121C6.118,3.924,6.175,3.961,6.233,3.99l0.531,0.266
                                            c0.219,0.109,0.477,0.105,0.691-0.008c0.383-0.199,0.793-0.367,1.217-0.5c0.215-0.066,0.391-0.225,0.477-0.432l0.188-0.449
                                            c0.033-0.076,0.051-0.16,0.057-0.244c0.029-0.463,0.418-0.828,0.885-0.828h1.156c0.471,0,0.859,0.369,0.885,0.84
                                            c0.004,0.066,0.016,0.133,0.037,0.197l0.178,0.549c0.076,0.232,0.262,0.416,0.496,0.488c0.406,0.127,0.803,0.291,1.176,0.484
                                            c0.217,0.113,0.475,0.115,0.693,0.004l0.51-0.258c0.063-0.031,0.119-0.072,0.172-0.119c0.211-0.195,0.494-0.338,0.672-0.338
                                            c0.154,0,0.277,0.107,0.506,0.338l0.855,0.854c0.166,0.168,0.258,0.389,0.258,0.625c0,0.225-0.078,0.43-0.227,0.596
                                            c-0.045,0.049-0.084,0.105-0.115,0.166l-0.258,0.51c-0.111,0.219-0.109,0.479,0.004,0.695c0.193,0.373,0.357,0.77,0.484,1.174
                                            c0.072,0.234,0.254,0.42,0.488,0.496l0.549,0.178c0.063,0.021,0.131,0.033,0.197,0.037c0.471,0.023,0.838,0.412,0.838,0.885
                                            V11.352z M10.856,7.445c-1.836,0-3.328,1.492-3.328,3.328s1.492,3.328,3.328,3.328c1.834,0,3.328-1.492,3.328-3.328
                                            S12.69,7.445,10.856,7.445z M10.856,12.582c-0.998,0-1.811-0.811-1.811-1.809s0.813-1.809,1.811-1.809s1.809,0.811,1.809,1.809
                                            S11.854,12.582,10.856,12.582z"/>
                                    </g>
                                </g>
                                </svg>
                               
                                <div class="dates">
                                    <div class="start">
                                        <strong>Data Torneio:</strong>
                                       31/02/2052
                                       <span></span>
                                    </div>
                                    <div class="ends">
                                        <strong>Premiação</strong>
                                        R$ 500
                                    </div>
                                </div>
                               
                               
                                <div class="stats">
                               
                                    <div>
                                        <strong>Vagas:</strong>
                                        50
                                    </div>
                                   
                                    <div>
                                        <strong>Participantes: </strong>
                                        15
                                    </div>
                                   
                                    <div>
                                        <strong>Vagas Restantes:</strong>                    
                                        35
                                    </div>
                                   
                                </div>
                 </div>
                 
                 <div id="back">
                    <div class="header">
                        Outras Informações:
                        <div class="close">
                            <div class="cy"></div>
                            <div class="cx"></div>
                        </div>
                    </div>
                        <div>
                             <strong>Organizações:</strong>
                                       Se7ev                                      
                        </div><br>
                       
                        <div class="short">
                             <strong>Jogo:</strong>
                                       H1Z1                                      
                        </div><br>
                       
                        <div class="short">
                             <strong>Premiação:</strong>
                                   R$ 500
                        </div><br>
                       <div class="text">
                                    <div class="text">
                                    <br>
                                        <strong>Regras:</strong>
                                       <font face="Courier New"> - Não ofender os inimigos
                        <br>-Não despausar partidas sem motivos <br>- Não ultrapassar 10 minutos de pause</font><br><br>
                                    </div>
                                </div>    
                 </div>                                                                                    
             </div>              
        </div>                
 
 
     </div>    
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
 
    $('#tile1 .settings').click(function(){        
 
        $('#tile1').addClass('animate');
        $('#tile1 div.settings-form').css('display', 'block').delay('40').animate({'opacity': 1});
 
        setTimeout(function(){
            $('#tile1 form div').css('display', 'block').animate({'opacity': 1, 'top':0}, 200);
        }, 40);
       
        setTimeout(function(){
            $('#tile1 form button').css('display', 'block').animate({'opacity': 1, 'top':0}, 200);
            $('#tile1 .cx, #tile1 .cy').addClass('s1');
            setTimeout(function(){$('#tile1 .cx, #tile1 .cy').addClass('s2');}, 100);
            setTimeout(function(){$('#tile1 .cx, #tile1 .cy').addClass('s3');}, 200);  
        }, 100);       
       
    });    
   
   
    $('#tile1 .close').click(function(){           
 
        $('#tile1 .cx, #tile1 .cy').removeClass('s1 s2 s3');   
       
        $('#tile1 form button').animate({'opacity': 0, 'top':-20}, 120, function(){$(this).css('display', 'none')});       
        setTimeout(function(){
            $('#tile1 form div').animate({'opacity': 0, 'top':-20}, 120, function(){
                $(this).css('display', 'none')             
            });
            $('#tile1 div.settings-form').animate({'opacity':0}, 120, function(){$(this).hide();});          
     
            $('#tile1').removeClass('animate');
        }, 50);                            
           
    });
    var flipCard = $("#make-3D .tile");
 
    $("#make-3D .settings").click(function(){          
 
        $(flipCard).addClass('flip-10');
        setTimeout(function(){
            $(flipCard).removeClass('flip-10').addClass('flip90');
        }, 50);
 
        setTimeout(function(){
            $(flipCard).removeClass('flip90').addClass('flip190');
            $('#front').hide(); $('#back').show();     
            setTimeout(function(){             
                $(flipCard).removeClass('flip190').addClass('flip180');
                $('#back .cx, #back .cy').addClass('s1');
                setTimeout(function(){$('#back .cx, #back .cy').addClass('s2');}, 80);
                setTimeout(function(){$('#back .cx, #back .cy').addClass('s3');}, 150);                        
                setTimeout(function(){
                    $(flipCard).css('transition', '100ms ease-out');                           
                }, 100);
            }, 100);           
        }, 150);                   
    });
   
    $('#back .close').click(function(){    
               
        $('#back .cx, #back .cy').removeClass('s1 s2 s3');     
        $(flipCard).removeClass('flip180').addClass('flip190');
 
        setTimeout(function(){
            $(flipCard).removeClass('flip190').addClass('flip90');         
        }, 50);                            
 
        setTimeout(function(){
            $('#front').show(); $('#back').hide();                 
                $(flipCard).removeClass('flip90').addClass('flip-10');
               
            setTimeout(function(){                     
            $(flipCard).removeClass('flip-10').css('transition', '100ms ease-out');                            
            }, 100);           
        }, 150);           
       
    });
   
    $('button').click(function(){return false;});
   
});
</script>
</body>
</html>