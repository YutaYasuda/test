<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>参考図書</title>
  </head>
  <body>
    <p>あなたにおすすめの書籍は次の通りです。<p>
      <%
      List<String> list = (ArrayList<String>)request.getAttribute("bookList");
      int listSize = list.size();
      for(int i = 0; i < listSize; i++){
        out.println(list.get(i) + "<br>");
      }

      out.println("size=" + list.size());
      out.println("list.get(0)=" + list.get(0));
      list.remove(1);
      out.println("size=" + list.size());

      %>
      <br>
        <a href="category.html">戻る</a>
        <hr>
          02組43番安田優太
