<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>チェックボックス</title>
  </head>

  <body>
    <h4>02組 043番 安田優太</h4>
    <p>チェックボックスの結果</p>
    あなたの好きな果物は、

    <%
  request.setCharacterEncoding("UTF-8");
  String[] fruits = request.getParameterValues("fruit");
  if(fruits == null) {
      out.print("ない");
      }else{
        for(int i = 0; i < fruits.length; i++)
        {
          out.print(fruits[i]);
          if(i < (fruits.length - 1)){
            out.print("と");
          }
        }
      }
  %>
  ですね。</p>
      </body>
</html>
