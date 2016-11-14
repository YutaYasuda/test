<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>comment2.jsp</title>
  </head>
  <body>
    <h4>02組　043番　安田優太</h4>
    <%
    //これはjavaの１行コメントです。
    out.println("javaの１行コメントは「//」で記述します。<br>");

    /*
    複数にわたるコメントの時に使います。
    */
    out.println("複数行にわたるコメントは「/*　*/」で記述します。");
    %>
  </body>
</html>
