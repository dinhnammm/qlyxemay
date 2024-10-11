/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connect.DBconnect;
import entity.Category;
import entity.Product;
import entity.information;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author halucky
 */
public class Dao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Product";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return list;
    }
    
    public int insert(Product product) {
        String query = "INSERT INTO Product (id, tensp, giaxe, hinhanh, thongso) VALUES (?, ?, ?, ?, ?)";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getId());
            ps.setString(2, product.getTensp());
            ps.setFloat(3,  product.getGiaxe());
            ps.setString(4, product.getHinhanh());
            ps.setString(5, product.getThongso());
            if (ps.executeUpdate() > 0) {
                return 1;
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return -1;
    }
    public int update(Product product) {
        String query = "UPDATE Product SET tensp = ?, giaxe = ?, hinhanh = ?, thongso = ? WHERE id = ?";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, product.getTensp());
            ps.setFloat(2, product.getGiaxe());
            ps.setString(3, product.getHinhanh());
            ps.setString(4, product.getThongso());
            ps.setString(5, product.getId());
        
            if (ps.executeUpdate() > 0) {
                return 1; // Trả về 1 nếu update thành công
                }
        } catch (Exception e) {
        } finally {
            closeConnection(); // Đóng kết nối sau khi thực thi xong
        }
            return -1; 
        }

    
    public void delete(String id) {
        String query = "DELETE FROM Product WHERE id = ?";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {

        } finally {
            closeConnection();
        }

    }
    
    
    public List<information> getAllInformation() {
        List<information> listI = new ArrayList<>();
        String query = "SELECT * FROM information";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                listI.add(new information(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDate(5), rs.getString(6), rs.getString(7), rs.getString(8)));
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return listI;
    }
    
    public Product getAllProductByID(String id) {
        String query = "select * from Product where id = ?";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }finally {
            closeConnection();
        }
        return null;
    }
    
    
    public List<Product> searchByName(String name) {
        List<Product> listProductByName = new ArrayList<>();
        String query = "select * from Product where [name] like ?";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                listProductByName.add(new Product(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
        }finally {
            closeConnection();
        }
        return listProductByName;
    }
    
    public List<Category> getAllCategory() {
        List<Category> listC = new ArrayList<>();
        String query = "SELECT * FROM category";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                listC.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (Exception e) {
        } finally {
            closeConnection();
        }
        return listC;
    }
    
    
    private void closeConnection() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (Exception e) {
        }
    }
        
    public static void main(String[] args) {
        Dao dao = new Dao();
        System.out.println(dao.getAllProducts());
        System.out.println(dao.getAllInformation());

    }
}
