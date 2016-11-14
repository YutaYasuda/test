<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>GETメソッドの処理</title>
  </head>

  <body>
    <h4>02組 043番 安田優太</h4>
    GETメソッドで送られてきたデータは<%= request.getParameter("data") %>です。
  </body>
</html>
