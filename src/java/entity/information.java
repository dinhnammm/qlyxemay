/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.Date;

/**
 *
 * @author halucky
 */
public class information {
    private int id;
    private String tennd;
    private String email;
    private int sdt;
    private Date ngaysinh;
    private String gioitinh;
    private String diachi;
    private String ghichu;

    public information(int id, String tennd, String email, int sdt, Date ngaysinh, String gioitinh, String diachi, String ghichu) {
        this.id = id;
        this.tennd = tennd;
        this.email = email;
        this.sdt = sdt;
        this.ngaysinh = ngaysinh;
        this.gioitinh = gioitinh;
        this.diachi = diachi;
        this.ghichu = ghichu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTennd() {
        return tennd;
    }

    public void setTennd(String tennd) {
        this.tennd = tennd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getSdt() {
        return sdt;
    }

    public void setSdt(int sdt) {
        this.sdt = sdt;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getGioitinh() {
        return gioitinh;
    }

    public void setGioitinh(String gioitinh) {
        this.gioitinh = gioitinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getGhichu() {
        return ghichu;
    }

    public void setGhichu(String ghichu) {
        this.ghichu = ghichu;
    }

    @Override
    public String toString() {
        return "information{" + "id=" + id + ", tennd=" + tennd + ", email=" + email + ", sdt=" + sdt + ", ngaysinh=" + ngaysinh + ", gioitinh=" + gioitinh + ", diachi=" + diachi + ", ghichu=" + ghichu + '}';
    }
    
    
}
