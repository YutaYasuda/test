<%@ page contentType="text/html; charset=Utf-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="utf-8">
      <title>MVC BMI RESULT</title>
  </head>
    <body>
      <h3>BMIによる肥満度調査結果(1)</h3>
      <p>
        <%= bmiBean.getName() %>さんの<br>
        身長は<%= bmiBean.getHeight() %>cm,体重は<%= bmiBean.getWeight() %>kg<br>
        ですので、<b>MBI値は<%= bmiBean.getBMI() %></b>となります。<br>
      </p>
      <hr>
        <a href="/web02043/mvc/bmi/bmicontroller">入力画面に戻る</a>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <a href="/web02043/mvc/bmi/bmicontroller">タイプを表示する</a>
        <hr>
          02組043番安田優太
        </body>
      </html>
      
