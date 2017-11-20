package cn.eddie.entity;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

//购物车对象
public class ShoppingCart {
    private List<CartItem> items = new ArrayList<CartItem>();
    private Double totalPrice = 0.0;

    // 购物车添加商品
    public void additems(CartItem item) {

        // 如果商品已经存在，只要修改数量就可以
        for (CartItem cartItem : items) {
            // Long object
            if (item.getId().equals(cartItem.getId())) {
                cartItem.setCount(cartItem.getCount() + item.getCount());
                return;
            }
        }
        items.add(item);
    }

    //删除商品
    public void delete(Long id) {
        Iterator<CartItem> iterator = items.iterator();
        while (iterator.hasNext()) {
            CartItem cartItem = iterator.next();
            if(cartItem.getId().equals(id)){
                iterator.remove();
            }
        }
    }


    //购物车结算总价格
    public Double getTotalPrice(){
        totalPrice = 0.0;
        for (CartItem item : items) {
            totalPrice += item.getPrice()*item.getCount();
        }
        return totalPrice;
    }

    public List<CartItem> getItems() {
        return items;
    }

    public void setItems(List<CartItem> items) {
        this.items = items;
    }
}
