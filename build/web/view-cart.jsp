<%-- 
    Document   : view-cart
    Created on : 3 thg 7, 2024, 12:55:07
    Author     : halucky
--%>

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
                <a href="#" class="px-3 border-right text-dark">Whishlist ()</a>
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
                <a href="#" class="py-2 rounded-pill color-primary-bg">
                  <span class="font-size-16 px-2 text-white"><i class="fas fa-shopping-cart"></i></span>
                  <span class="px-3 py-2 rounded-pill text-dark bg-light">252000000</span>
                </a>
            </form>
          </div>
        </nav>
        <!-- !Primary Navigation -->
    </header>
    <!-- start #header -->
    
    <!-- start #main-site -->
    <main id="main-site">
        
        <!-- Shopping cart section -->
        <section id="cart" class="py-3">
            <div class="container-fluid w-75">
                <h5 class="font-baloo font-size-20">Shopping Cart</h5>

                <!-- Shopping cart items -->
                <div class="row">
                    <div class="col-sm-9">
                        <!-- cart items -->
                        <div class="row border-top py-3 mt-3">
                            <div class="col-sm-2">
                                <img src="img/products/1.jpg" alt="cart1" class="img-fluid" style="height: 120px;">
                            </div>
                            <div class="col-sm-8">
                                <c:forEach items="${listP}" var="x" >
                                <h5 class="font-baloo font-size-20">z1000</h5>
                                <small>namdeptrai</small>
                                <!-- product ratings -->
                                <div class="d-flex">
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <a href="#" class="px-2 font-rale font-size-14">20,534 ratings</a>
                                </div>
                                <!-- !product ratings -->

                                <!-- product qty -->
                                <div class="qty d-flex pt-2">
                                    <div class="d-flex font-rale w-25">
                                        <button data-id="pro1" class="qty-down border bg-light"><i class="fas fa-angle-down"></i></button>
                                        <input type="text" data-id="pro1" class="qty_input border px-2 w-50 bg-light" disabled value="1" placeholder="1">
                                        <button data-id="pro1" class="qty-up border bg-light"><i class="fas fa-angle-up"></i></button>
                                    </div>
                                    <button type="submit" class="btn font-baloo text-danger px-3 border-right">Xoá</button>
                                  
                                </div>
                                </c:forEach>
                                <!-- !product qty -->
                            </div>

                            <div class="col-sm-2 text-right">
                              <div class="font-size-20 text-danger font-baloo">
                                <span class="product-price">10000000</span>
                              </div>
                            </div>
                        </div>
                        <!-- !cart items -->
                        <!-- cart items -->
                        <div class="row border-top py-3 mt-3">
                            <div class="col-sm-2">
                                <img src="img/products/2.jpg" alt="cart1" class="img-fluid" style="height: 120px;">
                            </div>
                            <div class="col-sm-8">
                                <h5 class="font-baloo font-size-20">z800</h5>
                                <small>namdeptrai</small>
                                <!-- product ratings -->
                                <div class="d-flex">
                                    <div class="rating text-warning font-size-12">
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="fas fa-star"></i></span>
                                        <span><i class="far fa-star"></i></span>
                                    </div>
                                    <a href="#" class="px-2 font-rale font-size-14">20,534 ratings</a>
                                </div>
                                <!-- !product ratings -->

                                <!-- product qty -->
                                <div class="qty d-flex pt-2">
                                    <div class="d-flex font-rale w-25">
                                        <button class="qty-down border bg-light" data-id="pro2"><i class="fas fa-angle-down"></i></button>
                                        <input type="text" data-id="pro2" class="qty_input border px-2 w-50 bg-light" disabled value="1" placeholder="1">
                                        <button data-id="pro2" class="qty-up border bg-light"><i class="fas fa-angle-up"></i></button>
                                    </div>
                                    <button type="submit" class="btn font-baloo text-danger px-3 border-right">Xoá</button>
                                </div>
                                <!-- !product qty -->
                            </div>

                            <div class="col-sm-2 text-right">
                              <div class="font-size-20 text-danger font-baloo">
                                <span class="product-price">152000000</span>
                              </div>
                            </div>
                        </div>
                        <!-- !cart items -->
                    </div>
                    <!-- subtotal section -->
                    <div class="col-sm-3">
                      <div class="sub-total border text-center mt-2">
                        <h6 class="font-size-12 font-rale text-success py-3"><i class="fas fa-check"></i> Đơn hàng của bạn đủ điều kiện để được Giao hàng MIỄN PHÍ.</h6>
                        <div class="border-top py-4">
                          <h5 class="font-baloo font-size-20">Tổng sản phẩm:&nbsp; <span class="text-danger"><span class="text-danger" id="deal-price">2520000000</span>VND</span></h5>
                          <button type="submit" class="btn btn-warning mt-3">Thanh toán</button>
                        </div>
                      </div>
                    </div>
                    <!-- !subtotal section -->
                </div>
                <!-- !Shopping cart items -->
            </div>
        </section>
        <!-- !Shopping cart section -->

        <!-- New Phones -->
        <section id="new-phones">
            <div class="container py-5">
            <h4 class="font-rubik font-size-20">New Phones</h4>
            <hr>

                    <!-- owl carousel -->
                    <div class="owl-carousel owl-theme">
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <a href="#"><img src="img/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                            <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <a href="#"><img src="img/products/2.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                            <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <a href="#"><img src="img/products/3.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                            <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <a href="#"><img src="img/products/6.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Samsung Galaxy 10</h6>
                            <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                            <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <a href="#"><img src="img/products/1.png" alt="product1" class="img-fluid"></a>
                        <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                            <span>$152</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="img/products/1.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$122</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                        </div>
                    </div>
                    <div class="item py-2 bg-light">
                        <div class="product font-rale">
                        <div class="d-flex flex-column">
                            <a href="#"><img src="img/products/2.png" class="img-fluid" alt="pro1"></a>
                            <div class="text-center">
                            <h6>Readme Note 7</h6>
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <div class="price py-2">
                                <span>$122</span>
                            </div>
                            <button type="submit" class="btn btn-warning font-size-12">Add to Cart</button>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                <!-- !owl carousel -->

            </div>
        </section>
        <!-- !New Phones -->

    </main>
    <!-- !start #main-site -->

    <!-- start #footer -->
    <footer id="footer" class="bg-dark text-white py-5">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-12">
            <h4 class="font-rubik font-size-20">Mobile Shopee</h4>
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
