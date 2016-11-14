package mvc.minishop;
import java.io.Serializable;
import java.util.*;

public class ItemBasketBean implements Serializable{

  //このArrayListのオブジェクトが本当の意味でのバスケット（購入商品を一時保管する）となる
  private List<ItemBean> basket = new ArrayList<ItemBean>();      //basketプロパティ

  //publicな引数なしのコンストラクタ
  public ItemBasketBean(){
  }

  //商品（ItemBean)に注文数(quantity)をセットし、バスケット（ArrayList）に追加する
  public void setBasket(ItemBean itemBean, int quantity){     //セッターメソッド
    itemBean.setQuantity(quantity);
    basket.add(itemBean);
  }

  //バスケットを取り出す
  public List<ItemBean> getBasket(){                        //ゲッターメソッド
    return basket;
  }
  //1.バスケット内の商品数（種類)返す
  public int getSize(){
    return basket.size();            //ArrayListのsize()メソッド
  }
  //2.バスケット内のn番目の商品を返す
  public ItemBean getItem(int n){   //ArrayListのget（）メソッド
    return basket.get(n);
  }
  //3.バスケット内のn番目の商品の数量を返す
  public int getItemQuantity(int n){
    return getItem(n).getQuantity();    //ItemBeanのgetItemQuantity()メソッド
  }
  //4.バスケット内のn番目の商品の購入額（単価×数量)を返す
  public int getTotal(int n){
    return (getItem(n).getPrice() * getItem(n).getQuantity());    //ItemBeanのgetPrice()メソッド
  }
  //5.バスケット内の商品の購入金額を返す
  public int getSum(){
    int sum = 0;
    for(int i = 0; i < this.getSize(); i++){     //ItemBasketBean(自分自身)のgetSize()メソッド
      sum += this.getTotal(i);                    //ItemBasketBean(自分自身)のgetTptal()メソッド
    }
    return sum;
  }
  //6.バスケットのn番目の商品を削除する
  public void deleteItem(int n){
    basket.remove(n);               //ArrayListのremove()メソッド
  }
  //7.バスケット内の商品をすべてクリアする
  public void clearItem(){
    basket.clear();                //ArrayListのclera()メソッド
  }
  //8.バスケットの内のn弁目の商品の数量を引数newQuantityの値に変更する
  public void changeItemQuantity(int n, int newQuantity){
    getItem(n).setQuantity(newQuantity);
  }
}
