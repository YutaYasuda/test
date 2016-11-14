<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>コンボボックス</title>
  </head>

  <body>
    <h4>02組43番安田優太</h4>
    <he>コンボボックス</h4>
<% request.setCharacterEncoding("UTF-8"); %>

<%
 out.print("あなたの好きなフルーツは");
 if()
あなたの好きなフルーツは、<%= request.getParameter("f") %>
と<%= request.getParameter("f") %>です。<br>

<a href="listbox.html">戻る</a>

</body>
</html>
