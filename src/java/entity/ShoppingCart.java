/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author halucky
 */
public class ShoppingCart {
    private List<CartItem> cartItemList;

    public ShoppingCart() {
        this.cartItemList = new ArrayList<>();
    }
    
    public void Add(CartItem cartItem) {
        this.cartItemList.add(cartItem);
    }
    
    public void remove(CartItem cartItem) {
        this.cartItemList.remove(cartItem);
    }
    
    public int getSize() {
        int re=0;
        for(CartItem c:cartItemList) {
            re+= c.getQuanlity();
        }
        return re;
    }
   
}
