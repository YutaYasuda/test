<%@ page contentType="text/html; charset=Utf-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
      <title>ユーザー情報</title>
  </head>
    <body>
      <%
      request.setCharacterEncoding("UTF-8");
      String userid = (String)request.getAttribute("userid");
      String[] records = (String[])request.getAttribute("records");
      %>

      <h3><%= userid %>さんのユーザー情報</h3>
      <%
      //単位配列の要素を取り出し、表示しているだけ
      for(int i=0; i<records.length; i++){
        out.println(records[i] + "<br>");
      }
      %>
      <br>
        <a href="login.html">ログインページに戻る</a>
        <hr>
          02組 043番 安田優太
    </body>
  </html>
