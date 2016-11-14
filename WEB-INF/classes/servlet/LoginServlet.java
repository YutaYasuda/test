package servlet;
import java.util.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class LoginServlet extends HttpServlet{

  //データベース代わりのHashMapオブジェクト
  //14行目からのinit()メソッドで初期化する。
  Map<String, String> users = new HashMap<String, String>();

  //データベースの代わりのHashMapを初期化する
  //initi()メソッドはこのクラスのオブジェクトが生成された直後に一度だけ実行される
  public void init(){
    //Mapのput()メソッド:第一引数=キー(ユニークであること),第二引数=値
    users.put("kobe","denshi");   //ユーザーID：kobe パスワード:denshi
    users.put("osaka","castle");  //ユーザーID:osaka パスワード:castle
    users.put("kyoto","gion");    //ユーザーID:kyoto　パスワード:gion
  }

  @Override         //HttpServletのdoGet()メソッドをオーバーライドしている
  public void doGet(HttpServletRequest request, HttpServletResponse response)
                  throws ServletException, IOException{
                    doPost(request, response);
                  }

                  //ユーザーIDとパスワードを取得して評価し、
                  //有効である場合には、AccountServletに要求(request）を転送(forward)する
                  //無効である場合には、ログインページに要求(request)を転送(forward）する
                  @Override     //HttpせｒｖぇｔのdoPost（）メソッドをオーバーライドしている
                  public void doPost(HttpServletRequest request,HttpServletRequest response)
                  throws ServletException, IOException{

                    //ユーザーIDとパスワードを取得する
                    String userid = request.getParameter("userid");
                    String password = request.getPa1arameter("password");

                    //ユーザーIDとパスワードのチェック
                    if(userid != null && password != null && password.equals(users.get(userid))){
                      //Mapを利用
                      //ユーザー情報8userid)をrequestスコープで管理する
                      request.setAttribute("userid",userid);

                      //このクラス（LoginServlet)のオブジェクトからServletContextを取得する
                      ServletContext application = this.getServletContext();

                      //AccountServletへへんいするためのRe
                      RequestDispatcher disp = application.getRequestDispatcher("/servlet/account");
                      disp.forward(request, response);
                    }else{
                      //
                      RequestDispatcher disp = request.getRequestDispatcher("login.html");
                      disp.forward(request, response);
                    }
}
}
