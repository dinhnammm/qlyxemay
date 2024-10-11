/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author halucky
 */
public class CartItem {
    private Product product;
    private int quanlity;

    public CartItem(Product product, int quanlity) {
        this.product = product;
        this.quanlity = quanlity;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuanlity() {
        return quanlity;
    }

    public void setQuanlity(int quanlity) {
        this.quanlity = quanlity;
    }
    
    public boolean addQuanlity(int quanlity) {
        this.quanlity += quanlity;
        return true;
    }
}
