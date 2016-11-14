<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>複数のデータ処理</title>
  </head>

  <body>
    <h4>02組43番安田優太</h4>
    <%= request.getParameter("name") %>さんの年号は<%= request.getParameter("age") %>です。
  </body>
</html>
