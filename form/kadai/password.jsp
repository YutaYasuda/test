<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>パスワード</title>
  </head>

  <body>
    <h4>02組43番安田優太</h4>

    入力されたユーザーIDは、<%= request.getParameter("id") %>です。<br>
    入力されたパスワードは、<%= request.getParameter("ps") %>です。

    <a href="password.html">戻る</a>
