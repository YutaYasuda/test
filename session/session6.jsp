<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>セッション6</title>
    </head>
    <body>
      <%
      request.setCharacterEncoding("utf-8");
      String strOldId = request.getParameter("oldId");
      %>

      <h3>セッション6</h3><br>

        OId Session ID = <%= strOldId %><br>
        New Session ID = <%= session.getId() %><br>
        名前:<%= (String)session.getAttribute("userName") %><br>
        職業:<%= (String)session.getAttribute("job") %> <br>
        年齢:<%= (String)session.getAttribute("age") %> <br>
        <hr>
          <a href="session1.jsp">最初に戻る</a>
</body>
</html>
