package mvc.minishop;   //パッケージ指定

import java.io.*;       //servlet関係のインポート
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.List;
import java.util.ArrayList;

public class ItemController extends HttpServlet {
  @Override
  public void doGet(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException{
    doPost(request, response);
  }

  @Override
  public void doPost(HttpServletRequest request, HttpServletResponse response)
  throws ServletException, IOException{
    request.setCharacterEncoding("UTF-8");
    String dispatcherURL = "index.jsp";                          //ディスパッチ先
    String process = request.getParameter("process");           //処理区分
    HttpSession session = request.getSession();                 //sessionオブジェクトの取得

    synchronized(session){                //マルチスレッドにおけるスレッドセーフな処理にするため
      if(process == null || process.equals("")){         //processの中身判定
        dispatcherURL = "index.jsp";
      }else if(process.equals("select")){                 //selectの時
        String genre = request.getParameter("genre");     //genreの値を取得
        ItemDAO itemDAO = new ItemDAO();                  //データベース処理を行うItemDAOクラスのオブジェクトを生成する
        session.setAttribute("items",itemDAO.selectItems(genre));   //ItemDAOクラスにパラメータgenreの値を渡し、抽出したデータ（ArrayListオブジェクト）を
        dispatcherURL = "select.jsp";
      }else if(process.equals("detail")){
        int ident = Integer.parseInt(request.getParameter("ident"));
        setItemBean(ident, session);
        dispatcherURL = "detail.jsp";
      }else if(process.equals("returnselect")){
        dispatcherURL = "select.jsp";
      }else if(process.equals("addBasket")){
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        this.addBasket(quantity, session);
        dispatcherURL = "basket.jsp";
      }else if(process.equals("change")){
        int number = Integer.parseInt(request.getParameter("number"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        ItemBasketBean itemBasketBean = (ItemBasketBean)session.getAttribute("itemBasketBean");
        itemBasketBean.changeItemQuantity(number,quantity);
        dispatcherURL = "basket.jsp";
      }else if(process.equals("delete")){
        int number = Integer.parseInt(request.getParameter("number"));
        ItemBasketBean itemBasketBean = (ItemBasketBean)session.getAttribute("itemBasketBean");
        itemBasketBean.deleteItem(number);
        dispatcherURL = "basket.jsp";
      }else if(process.equals("clear")){
        ItemBasketBean itemBasketBean = (ItemBasketBean)session.getAttribute("itemBasketBean");
        itemBasketBean.clearItem();
        dispatcherURL = "basket.jsp";
      }
      request.getRequestDispatcher(dispatcherURL).forward(request, response);
    }
  }


  private void setItemBean(int ident,HttpSession session){
    ItemBean itemBean = new ItemBean();
    List<ItemBean> items = (ArrayList<ItemBean>)session.getAttribute("items");
    for(int i=0; i<items.size(); i++){
      itemBean = items.get(i);
      System.out.println(i + "   session.getAttribute=" + session.getAttribute("items"));
      System.out.println("items.size=" + items.size());
      System.out.println("items.get=" + items.get(i));
      if(ident == itemBean.getIdent()){
        session.setAttribute("itemBean",itemBean);
        break;
      }
    }
  }

  private void addBasket(int quantity, HttpSession session){
    ItemBean itemBean =(ItemBean)session.getAttribute("itemBean");
    //System.out.prinln("itemBean");
    ItemBasketBean itemBasketBean = (ItemBasketBean)session.getAttribute("itemBasketBean");
    boolean duplicateFlag = false;
    if(itemBasketBean == null){
      itemBasketBean = new ItemBasketBean();
      session.setAttribute("itemBasketBean", itemBasketBean);
    }else{
      for(int i=0; i < itemBasketBean.getSize(); i++){
        if(itemBean.getIdent() == itemBasketBean.getItem(i).getIdent()){
          itemBasketBean.changeItemQuantity(i,quantity);
          duplicateFlag = true;
          break;
        }
    }
  }
  if(duplicateFlag == false){
    itemBasketBean.setBasket(itemBean,quantity);
  }
}
}
