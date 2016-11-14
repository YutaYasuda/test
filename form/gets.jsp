<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>GETメソッドの処理</title>
  </head>

  <body>
    <h4>02組 043番 安田優太</h4>
    <% request.setCharacterEncoding("UTF-8");
    String[] values = request.getParameterValues("data");
    for(int i = 0; i < values.length; i++){
      out.println("GETメソッドで送られてきたデータは" + values[i] + "です。<br>");
    }
    %>
  </body>
</html>
