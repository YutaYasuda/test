<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>リストボックス</title>
  </head>

  <body>
    <h4>02組43番安田優太</h4>
    <he>リストボックス</h4>

    あなたの好きなフルーツは、
<% request.setCharacterEncoding("UTF-8"); %>
<%
String[] values = request.getParameterValues("f");
for(int i = 0; i < values.length; i++){
  out.println(values[i]);
  if( i < (values.length -1 )){
    out.println("と");
  }
}
%>
ですね。<br>

<br>
<a href="listbox.html">戻る</a>

</body>
</html>
