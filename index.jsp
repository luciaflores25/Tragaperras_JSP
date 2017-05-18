<%-- 
    Document   : Tragaperra con JSP
    Created on : 19-abr-2017, 10:01:47
    Author     : Lucía Flores Padilla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <link href="estilo.css" rel="stylesheet" type="text/css">
  <head>
    <%
    int caso1 = (int)(Math.random() * 5);
    int caso2 = (int)(Math.random() * 5);
    int caso3 = (int)(Math.random() * 5);
    %>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Tragaperra con JSP</title>
    <style>
      body {
        text-align: center;
      }
      
    </style>
  </head>
  <body>
    <h1>Máquina tragaperras hecha con JSP</h1>
    <div>
    <%
    switch (caso1) {
      case 0:
        out.println("<img src=\"diamante.jpg\">");
        break;
      case 1:
        out.println("<img src=\"herradura.jpg\">");
        break;
      case 2:
        out.println("<img src=\"campana.jpg\">");
        break;
      case 3:
        out.println("<img src=\"corazon.jpg\">");
        break;
      case 4:
        out.println("<img src=\"limon.jpg\">");
        break;
    }
    switch (caso2) {
      case 0:
        out.println("<img src=\"diamante.jpg\">");
        break;
      case 1:
        out.println("<img src=\"herradura.jpg\">");
        break;
      case 2:
        out.println("<img src=\"campana.jpg\">");
        break;
      case 3:
        out.println("<img src=\"corazon.jpg\">");
        break;
      case 4:
        out.println("<img src=\"limon.jpg\">");
        break;
    }
    switch (caso3) {
      case 0:
        out.println("<img src=\"diamante.jpg\">");
        break;
      case 1:
        out.println("<img src=\"herradura.jpg\">");
        break;
      case 2:
        out.println("<img src=\"campana.jpg\">");
        break;
      case 3:
        out.println("<img src=\"corazon.jpg\">");
        break;
      case 4:
        out.println("<img src=\"limon.jpg\">");
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
    <form name="Formmulario" action="http://localhost:8080/Tragaperra/" method="get">
        <br><br>
    <input type="submit" value="Tira aquí">
    </form>
  </body>
</html>
