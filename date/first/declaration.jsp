<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>declaration.jsp</title>
  </head>
  <body>
    <h4>02 043 安田優太</h4>
    <%!
    private int number;
    private String dest;
    String show(){
      return number + "便の行く先は" + dest + "です";
    }
    %>
    <%
    this.number = 1234;
    this.dest = "東京";
    %>
    <%= show() %>
  </body>
</html>
