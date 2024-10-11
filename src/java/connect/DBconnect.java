/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author halucky
 */
public class DBconnect {
    private final String userID = "sa";
    private final String password = "Namdz2003@";
    private final String instance = "";
    private final String portNumber = "1433";
    private final String dbName = "QuanLyBanXeMay";
    private final String serverName = "localhost";

    public Connection getConnection() throws Exception {
        String url = "jdbc:sqlserver://" + serverName + ":" + portNumber + "\\" + instance + ";databaseName=" + dbName;
        if (instance == null || instance.trim().isEmpty()) {
            url = "jdbc:sqlserver://" + serverName + ":" + portNumber + ";databaseName=" + dbName;
        }
        // Thêm các tham số mã hóa SSL và chứng chỉ máy chủ tin cậy
        url += ";encrypt=true;trustServerCertificate=true";
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        return DriverManager.getConnection(url, userID, password);
    }

    public static void main(String[] args) throws Exception {
        Connection conn = new DBconnect().getConnection();
        if (conn != null) {
            System.out.println("Kết nối thành công!");
        } else {
            System.out.println("Kết nối thất bại.");
        }
    }
}
