/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author halucky
 */
public class Product {
    private String id;
    private String tensp;
    private float giaxe;
    private String hinhanh;
    private String thongso;

    public Product(String id, String tensp, float giaxe, String hinhanh, String thongso) {
        this.id = id;
        this.tensp = tensp;
        this.giaxe = giaxe;
        this.hinhanh = hinhanh;
        this.thongso = thongso;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTensp() {
        return tensp;
    }

    public void setTensp(String tensp) {
        this.tensp = tensp;
    }

    public float getGiaxe() {
        return giaxe;
    }

    public void setGiaxe(float giaxe) {
        this.giaxe = giaxe;
    }

    public String getHinhanh() {
        return hinhanh;
    }

    public void setHinhanh(String hinhanh) {
        this.hinhanh = hinhanh;
    }

    public String getThongso() {
        return thongso;
    }

    public void setThongso(String thongso) {
        this.thongso = thongso;
    }

    @Override
    public String toString() {
        return "Product{" + "id=" + id + ", tensp=" + tensp + ", giaxe=" + giaxe + ", hinhanh=" + hinhanh + ", thongso=" + thongso + '}';
    }

    

    
}