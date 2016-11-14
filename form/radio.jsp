<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
    <title>ラジオボタン</title>
  </head>
  <body>
    <h4>02組43番安田優太</h4>
    <p>チェックボックス受信結果</p>
    <p>あなたの一番好きな果実は、
      <%
        request.setCharacterEncoding("UTF-8");
        out.println(request.getParameter("fruit"));
      %>
      ですね。</p>
    </body>
  </html>
  
