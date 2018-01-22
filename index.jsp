<%-- 
    Document   : Simulador de Máquina Tragaperra con JSP
    Created on : 22-ene-2018, 12:53:25
    Author     : Lucía Flores Padilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
        int caso1 = (int)(Math.random() * 8);
        int caso2 = (int)(Math.random() * 8);
        int caso3 = (int)(Math.random() * 8);
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Bungee+Shade" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Patua+One" rel="stylesheet">
        <title>JSP Page</title>
        
        <script type="text/javascript">
                function sonar(elemento) {
                        var audio = document.getElementById(elemento);
                        audio.play();
                        }
                function pausar(elemento) {
                        var audio = document.getElementById(elemento);
                        audio.pause();
                        }
        </script>
        
    </head>
    <body onload="sonar('sonidoTragaperra')" >
        <h1>Máquina tragaperras</h1>
    <div>
    <%
    switch (caso1) {
      case 0:
        out.println("<img src=\"img/campana.png\">");
        break;
      case 1:
        out.println("<img src=\"img/cerezas.png\">");
        break;
      case 2:
        out.println("<img src=\"img/diamanteMorado.png\">");
        break;
      case 3:
        out.println("<img src=\"img/diamanteVerde.png\">");
        break;
      case 4:
        out.println("<img src=\"img/limon.png\">");
        break;
       case 5:
        out.println("<img src=\"img/pina.png\">");
        break;
       case 6:
        out.println("<img src=\"img/sieteAzul.png\">");
        break;
       case 7:
        out.println("<img src=\"img/sieteRojo.png\">");
        break;
    }
    switch (caso2) {
      case 0:
        out.println("<img src=\"img/campana.png\">");
        break;
      case 1:
        out.println("<img src=\"img/cerezas.png\">");
        break;
      case 2:
        out.println("<img src=\"img/diamanteMorado.png\">");
        break;
      case 3:
        out.println("<img src=\"img/diamanteVerde.png\">");
        break;
      case 4:
        out.println("<img src=\"img/limon.png\">");
        break;
       case 5:
        out.println("<img src=\"img/pina.png\">");
        break;
       case 6:
        out.println("<img src=\"img/sieteAzul.png\">");
        break;
       case 7:
        out.println("<img src=\"img/sieteRojo.png\">");
        break;
    }
    switch (caso3) {
      case 0:
        out.println("<img src=\"img/campana.png\">");
        break;
      case 1:
        out.println("<img src=\"img/cerezas.png\">");
        break;
      case 2:
        out.println("<img src=\"img/diamanteMorado.png\">");
        break;
      case 3:
        out.println("<img src=\"img/diamanteVerde.png\">");
        break;
      case 4:
        out.println("<img src=\"img/limon.png\">");
        break;
       case 5:
        out.println("<img src=\"img/pina.png\">");
        break;
       case 6:
        out.println("<img src=\"img/sieteAzul.png\">");
        break;
       case 7:
        out.println("<img src=\"img/sieteRojo.png\">");
        break;
    }
    %>
    </div>
    <div class="tiradas">
    <%
    if ((caso1 == caso2) && (caso1 == caso3)) {
      out.println("Enhorabuena, ha ganado 10 monedas");
    } else if ((caso1 == caso2) || (caso1 == caso3) || (caso2 == caso3)) {
      out.println("Bien, ha recuperado su moneda");
    } else {
      out.println("Lo siento, has perdido");
    }
    %>
    </div>
    <form name="Formmulario" action="http://localhost:8083/ProyectoTragaperra/" method="get">
        <br><br>
    <input type="submit" value="TIRAR" >
    </form>
    
    <audio id="sonidoTragaperra" preload="auto">
    <source id="sonidoTragaperra" preload="auto" src="sonidos/sonidoTragaperra.mp3"></source>
    este navegador no puede reproducir audio nativo
    </audio>
    
    </body>
</html>
