<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="javax.naming.Context,javax.naming.InitialContext" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>dbselect.jsp</title>
</head>
<body>
  <%
  Context ctx = null;             //DataSourceをネーミングサービスで管理する
  DataSource ds = null;           //コネクションプーリングを管理しているオブジェクト
  Connection con = null;          //JavaとDBとを結ぶコネクション・オブジェクト
  PreparedStatement ps = null;    //SQL文を操作するプリペアードステートメント・オブジェクト
  ResultSet rs = null;            //セレクト(抽出）したデータの集合体を表すリザルトセット・オブジェクト

  try{
    ctx = new InitialContext();            //InitialContextオブジェクト(DataSourceをネーミングサービスで管理するオブジェクト)を作成
    ds = (DataSource)ctx.lookup("java:comp/env/jdbc/jsp");//JINDIを利用しデータベース"jsp"のDataSouceオブジェクトを探し出す
    con = ds.getConnection();             //データベースとのConnectionオブジェクトを取得する
    String strSql ="select * from person";//SQL文(SELECT文)を定義
    ps = con.prepareStatement(strSql);    //SQL文を操作するPreparedStatementオブジェクトを取得する
    rs = ps.executeQuery();               //SQL文を実行する(戻り値はResuleSetオブジェクト）
    while(rs.next()){
      out.println("uid = " + rs.getInt("uid") + ",name=" + rs.getString("name") + "<br>");
    }
  }catch(Exception e){
    System.out.println("try block:" + e.getMessage());
    out.println("Exception e");
  }finally{
    try{
      if(rs != null)rs.close();
      if(con != null)con.close();
      if(ps != null)ps.close();
    }catch(Exception e){
      System.out.println("finally block:" + e.getMessage());
    }
  }
  %>
