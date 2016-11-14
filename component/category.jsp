<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
int category = Integer.parseInt(request.getParameter("category"));
out.println("category=" + category);
List<String >list = new ArrayList<String>(); //ArrayListオブジェクトの生成

if(category == 1){
  list.add("優しいJava");
  list.add("独習Java");
  list.add("Java言語プログラミングレッスン");
}else if(category == 2){
  list.add("基礎からのサーブレット/JSP");
  list.add("速習サーバーサイドJava");
}else if(category == 3){
  list.add("J2EEプログラマのためのEJBパーフェクトガイド");
}
request.setAttribute("bookList",list);    //ArrayListオブジェクトを「bookList」という名前でリクエスト・スコープに保存
                    //保存するオブジェクトの名前,保存するオブジェクト

%>
<jsp:forward page="bookList.jsp"/>
