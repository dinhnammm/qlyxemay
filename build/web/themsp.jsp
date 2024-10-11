<%-- 
    Document   : themsp
    Created on : 3 thg 7, 2024, 22:51:33
    Author     : halucky
--%>
<%@page import="dao.Dao" %>
<%@page import="entity.Product" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mobile Shopee</title>
    
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" integrity="sha256-UhQQ4fxEeABh4JrcmAJ1+16id/1dnlOEVCFOxDef9Lw=" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha256-kksNxjDRxd/5+jGurZUJd1sdR2v+ClrCl3svESBaJqw=" crossorigin="anonymous" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Custom CSS file -->
    <link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>

    <!-- start #header -->
    <header id="header">
        <div class="strip d-flex justify-content-between px-4 py-1 bg-light">
            <p class="font-rale font-size-12 text-black-50 m-0">Đinh Văn Nam chủ shop liên hệ: 0963050819</p>
            <div class="font-rale font-size-14">
                <a href="#" class="px-3 border-right border-left text-dark">Login</a>
                <a href="#" class="px-3 border-right text-dark">Whishlist (0)</a>
            </div>
        </div>

        <!-- Primary Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark color-second-bg">
          <a class="navbar-brand" href="#">Nam Prestigious</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav m-auto font-rubik">
              <li class="nav-item active">
                <a class="nav-link" href="Homecontrol">Trang chủ</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="view-cart.jsp">Giỏ hàng</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="Themsp">Sản phẩm</a>
              </li>
            </ul>
            <form action="#" class="font-size-14 font-rale">
                <a href="view-cart.jsp" class="py-2 rounded-pill color-primary-bg">
                  <span class="font-size-16 px-2 text-white"><i class="fas fa-shopping-cart"></i></span>
                  <span class="px-3 py-2 rounded-pill text-dark bg-light">0</span>
                </a>
            </form>
          </div>
        </nav>
        <!-- !Primary Navigation -->
    </header>
    <div class="container">
        <h2>Sản Phẩm của chúng tôi</h2>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Mã sản phẩm</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá xe</th>
                    <th>Hình ảnh</th>
                    <th>Thông số</th>
                    <th>Button</th>                
                </tr>
            </thead>
            <tbody>
                <%
                    Dao dao = new Dao();
                    List<Product> arrPro = dao.getAllProducts();
                    for (Product item : arrPro){
                %>
                <tr>
                    <td><%= item.getId() %></td>
                    <td><%= item.getTensp() %></td>
                    <td><%= item.getGiaxe() %></td>
                    <td><img width="100px" src="./img/products/<%= item.getHinhanh() %>"</td>
                    <td><%= item.getThongso() %></td>
                    <td><div>
                        <a class="btn btn-primary btn-sm" href="Themsp?action=AddOrEdit&id=<%= item.getId() %>">Sửa</a>
                        <a class="btn btn-danger btn-sm" href="Themsp?action=Delete&id=<%= item.getId() %>">Xóa</a>
                        </div>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="suasp.jsp?action=AddOrEdit" class="btn btn-primary">Thêm sản phẩm</a>
        
        
        
    </div>
</body>
</html>

