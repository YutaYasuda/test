<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.text.DecimalFormat" %>
<jsp:useBean id="itemBean" class="mvc.minishop.ItemBean" scope="session" />
<!DOCTYPE html>
<html lang="ja">
</html>
<head>
  <meta charset="UTF-8">
    <title>詳細表示</title>
    <link rel="stylesheet" href="minishop.css">
</head>
<body>
  <%
      DecimalFormat df = new DecimalFormat("#,##0");
  %>
  <h3>商品詳細表示</h3>
  02組043番安田優太
  <hr>
    <form method="POST" action="itemcontroller">
    <table>
      <tr><th>商品名</th></tr>
      <tr><td colspan="2"><div class="td_center">
        <img class="detail_img" src="images/<%= itemBean.getImage() %>"></div></td></tr>
      <tr><th>メーカー・著者<br>アーティスト</th>
        <td><%= itemBean.getMaker() %></td></tr>
      <tr><th>価　格</th>
        <td><%= df.format(itemBean.getPrice()) %></td></tr>
      <tr><th>注文数</th>
        <td><input type="text" name="quantity" size="2" value="1" /></td></tr>
      <tr><td colspan="2" class="td_center"><input type="submit" value="バスケットに入れる"></td></tr>
    </table>
    <input type="hidden" name="process" value="addBasket" />
  </form>
    <br>
      <a href="itemcontroller?process=returnselect">ジャンル別商品一覧に戻る</a>
    </body>
  </html>
