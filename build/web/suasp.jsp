<%-- 
    Document   : suasp
    Created on : 4 thg 7, 2024, 15:43:37
    Author     : halucky
--%>
<%@ page import="entity.Product" %>
<%@ page import="dao.Dao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sửa thông tin sản phẩm</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<%
    String action = (String) request.getAttribute("ACTION");
    Product products = (Product) request.getAttribute("PRODUCTS");
    if (action == null) {
        action = "SaveOrUpdate";
    }
    if (products == null) {
        products = new Product("", "", 0, "", "");
    }
%>
</head>
    <body>
        <div class="container" style="margin-top: 10px;">
            <div class="row" style="border: 1px darkgrey solid; border-radius: 10px;width: 50%; margin: 0 auto; padding: 20px;" >
                <div class="col-sm-12">
                    <h2>Thêm thông tin sản phẩm</h2>
                    <form action="Themsp">
                        <input type="hidden" class="form-control" name="action" value="<%=action%>">
                        <div class="form-group">
                            <label>Mã SP:</label>
                            <input type="text" class="form-control" name="id" value="<%=products.getId()%>"  placeholder="Enter id">
                        </div>
                        <div class="form-group">
                            <label>Tên SP:</label>
                            <input type="text" class="form-control" name="tensp" value="<%=products.getTensp()%>" placeholder="Enter tensp">
                        </div>
                        <div class="form-group">
                            <label>Giá xe:</label>
                            <input type="text" class="form-control" name="giaxe" value="<%=products.getGiaxe()%>" placeholder="Enter giaxe">
                        </div>
                        <div class="form-group">
                            <label>Hình ảnh:</label>
                            <input type="text" class="form-control" name="hinhanh" value="<%=products.getHinhanh()%>" placeholder="Enter hinhanh">
                        </div>
                        <div class="form-group">
                            <label>Thông số:</label>
                            <input type="text" class="form-control" name="thongso" value="<%=products.getThongso()%>" placeholder="Enter thongso">
                        </div>
                        <button type="submit" class="btn btn-primary">Thêm SP</button>
                        <button type="reset" value="ReSet" class="btn btn-primary">Thoát</button>
                        <a href="themsp.jsp" class="btn btn-primary">Trở về trang view sp</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

