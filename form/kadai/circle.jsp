<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>円周と面積</title>
  </head>

  <body>
    <h4>02組43番安田優太</h4>

    <style>
    td{
      width: 30px;
      text-align: right;
    }
    </style>

    <%
    double r = Double.parseDouble(request.getParameter("hankei"));
    %>



    <table border="1">
      <tr>
        <td>半径</td>
        <td><%= request.getParameter("hankei") %></td>
      </tr>

      <tr>
        <td>円周</td>
        <td><%= 2.0 * Math.PI * r %> </td>
      </tr>

      <tr>
        <td>面積</td>
        <td> <%= Math.PI * r * r %></td>
      </tr>

    </table>


<a href="circle.html">戻る</a>

</body>
</html>
