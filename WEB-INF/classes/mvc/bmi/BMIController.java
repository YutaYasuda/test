package mvc.bmi;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class BMIController extends HttpServlet{

  String dispatcherURL = null; //処理結果に応じた変異先

  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException{
            doPOST(request,response);
          }

  @Override
  public void doPOST(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException{
            request.setCharacterEncoding("UTF-8");
            String process = request.getParameter("process");
            if(process == null || process.equals("")){      //パラメータprocessの値が何もない場合
              dispatcherURL = "/mvc/bmi/bmiform.html";      //遷移先を指定
            }else if(process.equals("calc")){               //パラメータprocessの値が"calcの場合
              try{
                //送られてきたデータを受け取る
                String name = request.getParameter("name");
                double height = Double.parseDouble(request.getParameter("height"));
                double weight = Double.parseDouble(request.getParameter("weight"));
                //BMIBeanを生成し、プロパティに値をセットし、BMI値を計算
                BMIBean bmiBean = new BMIBean();           //BMIBeanオブジェクトを生成
                bmiBean.setName(name);                    //名前の値セット
                bmiBean.setHeight(height);                //身長の値セット
                bmiBean.setWeight(weight);                //体重の値セット
                bmiBean.calcBMI();                        //MBI値を計算
                HttpSession session = request.getSession();//sessionオブジェクトを取得
                session.setAttribute("bmiBean",bmiBean);
                dispatcherURL = "/mvc/bmi/bmiresult.jspd";
              }catch(Exception e){
                dispatcherURL = "/mvc/bmi/bmiform.html";
              }
            }else if(process.equals("type")){
              dispatcherURL = "bmitype.jsp";
            }
            //dispatcherURLに設定された遷移先にディスパッチする
        }
}
