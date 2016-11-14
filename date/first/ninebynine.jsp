<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>ninebynine.jsp</title>

      <style>
      td{
        width: 30px;
        text-align: right;
      }
      </style>

  </head>

  <body>
    <h4>02組　043番 安田優太</h4>
    <hr>
    <br>
    <table border="1">

    <%
    for(int i = 1; i < 10; i++){
      out.print("<tr>");
      for(int j = 1; j < 10; j++){
         out.print("<td>" + (i * j) + "</td>");
      }
      out.println("</tr>");
    }
    %>

    </table>
  </body>
</html>
