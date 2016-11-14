<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>セッション5</title>
    </head>
    <body>
      <h3>セッション5</h3>

      Session ID = <%= (String)session.getAttribute("userName") %><br>
      名前: <%= (String)session.getAttribute("userName") %><br>
      職業: <%= (String)session.getAttribute("job") %><br>
      年齢: <%= (String)session.getAttribute("age") %><br>
      <hr>
        <a href="session6.jsp?oldId= <%= session.getId() %>">セッション破棄</a>
        <% session.invalidate(); %>
      </body>
    </html>
