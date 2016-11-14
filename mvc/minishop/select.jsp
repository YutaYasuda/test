<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="mvc.minishop.ItemBean" %>
<%@ page import="java.util.List, java.util.ArrayList" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
      <title>商品一覧</title>
      <link rel="stylesheet" href="minishop.css">
  </head>
  <body>
    <h3>ジャンル別商品一覧</h3>
    02組 43番 安田優太<br>
    <hr>
      <table>
        <tr><th>商品名</th><th>メーカー・著者<br>アーティスト</th><th>価格</th><th>詳細</th></tr>
        <%

          ItemBean itemBean = null;
          //セッションスコープからitems(ArrayListオブジェクト)を取り出す
          List<ItemBean> items = (ArrayList<ItemBean>)session.getAttribute("items");
          DecimalFormat df = new DecimalFormat("#,##0");
          for(int i=0; i<items.size(); i++){
            itemBean = items.get(i);
            out.println("<tr><td>");
            out.println(itemBean.getName());
            out.println(itemBean.getIdent());
            out.println("</td><td>");
            out.println(itemBean.getMaker());
            out.println("</td><td class='td_right'>");
            out.println("&yen;" + df.format(itemBean.getPrice()));
            out.println("</td><td class='td_center'>");
            out.println("<a href='itemcontroller?process=detail&ident="+ itemBean.getIdent() +"'>リンク</a>");
            out.println("</td></tr>");
          }
          %>

        </table>
        <br>
          <a href="itemcontroller">ジャンル選択に戻る</a>
        </body>
      </html>
