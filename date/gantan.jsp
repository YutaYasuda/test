<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Calendar" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="Utf-8">
      <title>正月までの日数</title>
    </head>
    <body>
      <%
      Calendar cal = Calendar.getInstance();
      String[] Week = {"","日","月","火","水","木","金","土"};
      out.println("現在、" + cal.get(Calendar.YEAR) + "年");
      out.println((cal.get(Calendar.MONTH) + 1) + "月");
      out.println(cal.get(Calendar.DATE) + "日");
      out.println("（" + Week[cal.get(Calendar.DAY_OF_WEEK)] + ")");
      out.println(cal.get(Calendar.HOUR_OF_DAY) + "時");
      out.println(cal.get(Calendar.MINUTE) + "分");
      out.println(cal.get(Calendar.SECOND) + "秒");
      out.println(cal.get(Calendar.MILLISECOND) + "ミリ秒です。<br>");

      Calendar calToday = Calendar.getInstance();
      Calendar calGantan = Calendar.getInstance();
      calGantan.set(2017, 0 , 1);
      long diff = ( calGantan.getTimeInMillis() - calToday.getTimeInMillis()) / (1000*60*60*24);
      out.println("正月まで、あと" + diff + "日です。");

      %>
    </body>
  </html>
