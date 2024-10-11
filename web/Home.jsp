<%-- 
    Document   : Home
    Created on : 3 thg 7, 2024, 12:54:16
    Author     : halucky
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kawasaki</title>
    
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
    <!-- start #header -->
    
    <!-- start #main-site -->
    <main id="main-site">
      
      <!-- Owl carousel -->
      <section id="banner-area">
        <div class="owl-carousel owl-theme">
          <div class="item">
            <img src="img/anhbia1.jpg" alt="Banner1">
          </div>
        </div>
      </section>
      <!-- Owl carousel -->

      <!-- Top Sale -->
      <section id="top-sale">
        <div class="container py-5">
          <h4 class="font-rubik font-size-20">Top Sale</h4>
          <hr>
          <!-- owl carousel -->
          <div class="owl-carousel owl-theme">
            <c:forEach items="${listP}" var="x" >
            <div class="item py-2">
              <div class="product font-rale">
                <a href="#"><img src="img/products/${x.hinhanh}" alt="product1" class="img-fluid"></a>
                <div class="text-center">
                  <h6>${x.tensp}</h6>
                  <div class="rating text-warning font-size-12">
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="far fa-star"></i></span>
                  </div>
                  <div class="price py-2">
                    <span>${x.giaxe}</span>
                  </div>
                  <button type="submit" class="btn btn-warning font-size-12"></button>
                </div>
              </div>
            </div>
            <div class="item py-2">
              <div class="product font-rale">
                <a href="#"><img src="img/products/${x.hinhanh}" alt="product1" class="img-fluid"></a>
                <div class="text-center">
                  <h6>${x.tensp}</h6>
                  <div class="rating text-warning font-size-12">
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="far fa-star"></i></span>
                  </div>
                  <div class="price py-2">
                    <span>${x.giaxe}</span>
                  </div>
                  <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                </div>
              </div>
            </div>
            <div class="item py-2">
              <div class="product font-rale">
                <a href="#"><img src="img/products/${x.hinhanh}" alt="product1" class="img-fluid"></a>
                <div class="text-center">
                  <h6>${x.tensp}</h6>
                  <div class="rating text-warning font-size-12">
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="far fa-star"></i></span>
                  </div>
                  <div class="price py-2">
                    <span>${x.giaxe}</span>
                  </div>
                  <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                </div>
              </div>
            </div>
            <div class="item py-2">
              <div class="product font-rale">
                <a href="#"><img src="img/products/${x.hinhanh}" alt="product1" class="img-fluid"></a>
                <div class="text-center">
                  <h6>${x.tensp}</h6>
                  <div class="rating text-warning font-size-12">
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="fas fa-star"></i></span>
                    <span><i class="far fa-star"></i></span>
                  </div>
                  <div class="price py-2">
                    <span>${x.giaxe}</span>
                  </div>
                  <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                </div>
              </div>
            </div>
            </c:forEach>
          <!-- owl carousel -->
        </div>
      </section>
      <!-- !Top Sale -->

      <!-- Special Price -->
      <section id="special-price">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-5 shadow p-2" style="background-color: #ffffff">
          <h4 class="font-rubik font-size-20">Special Price:</h4>
          <div id="filters" class="button-group text-right font-baloo font-size-16">
             <ul class="navbar-nav me-auto mb-2 mb-lg-0" >
                <c:forEach items="${listC}" var="obj_category">
                        <li class="nav-item ${tag == obj_category.cid ? "menulink":""}">
                            <!-- sử dụng toán tử 3 ngôi: nếu đúng id được chọn thì giá trị trả về class là menulink ngược là rỗng-->
                            <a class="nav-link text-dark" href="Categorycontrol?cateID=${obj_category.cid}">${obj_category.cname}</a>
                        </li>
                </c:forEach>
             </ul>
          </div>
          </nav>
        

          <div class="grid">
            <c:forEach items="${listP}" var="x" >
            <div class="grid-item Apple border">
              <div class="item py-2" style="width: 200px;">
               <div class="product font-rale">
                 <a href="Detailcontrol?pid=${x.id}"><img src="img/products/${x.hinhanh}" alt="product1" class="img-fluid"></a>
                 <div class="text-center">
                   <a href="Detailcontrol?pid=${x.tensp}">
                   <h6>${x.tensp}</h6></a>
                   <div class="rating text-warning font-size-12">
                     <span><i class="fas fa-star"></i></span>
                     <span><i class="fas fa-star"></i></span>
                     <span><i class="fas fa-star"></i></span>
                     <span><i class="fas fa-star"></i></span>
                     <span><i class="far fa-star"></i></span>
                   </div>
                   <div class="price py-2">
                     <span>${x.giaxe}</span>
                   </div>
                   <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                 </div>
               </div>
             </div>   
            </div>
            </c:forEach>
          </div>
        </div>
      </section>
      <!-- !Special Price -->

      <!-- Banner Ads -->
      <section id="banner_adds">
        <div class="container py-5 text-center">
          <img src="img/banner1.jpg" alt="banner1" class="img-fluid">
          <img src="img/banner2.jpg" alt="banner2" class="img-fluid">
        </div>
      </section>
      <!-- !Banner Ads -->
      <!-- Blogs -->
      <section id="blogs">
        <div class="container py-4">
          <h4 class="font-rubik font-size-20">Latest Blogs</h4>
          <hr>

          <div class="owl-carousel owl-theme">
            <div class="item">
              <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                <img src="img/blog/blog1.jpg" alt="cart image" class="card-img-top">
                <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                <a href="#" class="color-second text-left">Go somewhere</a>
              </div>
            </div>
            <div class="item">
              <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                <img src="img/blog/blog2.jpg" alt="cart image" class="card-img-top">
                <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                <a href="#" class="color-second text-left">Go somewhere</a>
              </div>
            </div>
            <div class="item">
              <div class="card border-0 font-rale mr-5" style="width: 18rem;">
                <h5 class="card-title font-size-16">Upcoming Mobiles</h5>
                <img src="img/blog/blog3.jpg" alt="cart image" class="card-img-top">
                <p class="card-text font-size-14 text-black-50 py-1">Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis non iste sequi cupiditate tempora iure. Velit accusamus saepe harum sed.</p>
                <a href="#" class="color-second text-left">Go somewhere</a>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- !Blogs -->

    </main>
    <!-- !start #main-site -->

    <!-- start #footer -->
    <footer id="footer" class="bg-dark text-white py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-12">
            <h4 class="font-rubik font-size-20">Kawasaki</h4>
            <p class="font-size-14 font-rale text-white-50">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Repellendus, deserunt.</p>
          </div>
          <div class="col-lg-4 col-12">
            <h4 class="font-rubik font-size-20">Newslatter</h4>
            <form class="form-row">
              <div class="col">
                <input type="text" class="form-control" placeholder="Email *">
              </div>
              <div class="col">
                <button type="submit" class="btn btn-primary mb-2">Subscribe</button>
              </div>
            </form>
          </div>
          <div class="col-lg-2 col-12">
            <h4 class="font-rubik font-size-20">Newslatter</h4>
            <div class="d-flex flex-column flex-wrap">
              <a href="#" class="font-rale font-size-14 text-white-50 pb-1">About Us</a>
                  <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Delivery Information</a>
                  <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Privacy Policy</a>
                  <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Terms & Conditions</a>
            </div>
          </div>
          <div class="col-lg-2 col-12">
            <h4 class="font-rubik font-size-20">Account</h4>
            <div class="d-flex flex-column flex-wrap">
              <a href="#" class="font-rale font-size-14 text-white-50 pb-1">My Account</a>
              <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Order History</a>
              <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Wish List</a>
              <a href="#" class="font-rale font-size-14 text-white-50 pb-1">Newslatters</a>
            </div>
          </div>
        </div>
      </div>
    </footer>

    <div class="copyright text-center bg-dark text-white py-2">
      <p class="font-rale font-size-14">&copy; Copyrights 2024. Desing By <a href="#" class="color-second">Thiên Ý</a></p>
    </div>
    <!-- start #footer -->

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <!-- Owl Carousel JS file -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- isotope plugin cdn -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.6/isotope.pkgd.min.js" integrity="sha512-Zq2BOxyhvnRFXu0+WE6ojpZLOU2jdnqbrM1hmVdGzyeCa1DgM3X5Q4A/Is9xA1IkbUeDd7755dNNI/PzSf2Pew==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <!-- Javascript -->
    <script src="js/index.js"></script>
</body>
</html>
