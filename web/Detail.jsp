<%-- 
    Document   : Detail
    Created on : 3 thg 7, 2024, 12:55:57
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
        
        <!-- Product -->
        <section id="product" class="py-3">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <img src="img/products/${detail.hinhanh}" alt="product" class="img-fluid">
                        <div class="form-row pt-4 font-size-16 font-baloo">
                            <div class="col" >
                                <button type="submit" class="btn btn-danger form-control"><a href="thanhtoan.jsp">Thanh toán</a></button>
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-warning form-control"><a href="view-cart.jsp">Thêm giỏ hàng</a></button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 py-5">
                        <h5 class="font-baloo font-size-20">${detail.tensp}</h5>
                        <small>Phân khối lớn</small>

                        <div class="d-flex">
                            <div class="rating text-warning font-size-12">
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="fas fa-star"></i></span>
                                <span><i class="far fa-star"></i></span>
                            </div>
                            <a href="#" class="px-2 font-rale font-size-14">20,534 ratings | 1000+ answered questions</a>
                        </div>
                        <hr class="m-0">

                        <!-- Product price -->
                        <table class="my-3">
                            <tr class="font-rale font-size-14">
                                <td>Deal Price:</td>
                                <td class="font-size-20 text-danger"><span>${detail.giaxe} </span><small class="text-dark font-size-12">&nbsp;&nbsp; VND</small></td>
                            </tr>

                        </table>
                        <!-- !Product price -->

                        <!-- Policy -->
                        <div id="policy">
                            <div class="d-flex">
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-retweet border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">10 Ngày <br>Hoàn trả</a>
                                </div>
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-truck  border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">Tốc tộ cao <br>Giao hàng nhanh</a>
                                </div>
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-check-double border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">1 Năm <br>Bảo hành</a>
                                </div>
                            </div>
                        </div>
                        <!-- !Policy -->
                        <hr>

                        <!-- order-details -->
                        <div id="order-details" class="font-rale d-flex flex-column text-dark">
                            <small>Giao hàng: 2-3 ngày</small>
                            <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Địa chỉ shop: Nhà Nam</small><br>
                        </div>
                        <!-- !order-details -->

                        <div class="row">

                            <div class="col-6">
                                <!-- product qty section -->
                                <div class="qty d-flex">
                                    <h6 class="font-baloo">SL:</h6>
                                    <div class="px-4 d-flex font-rale">
                                        <button class="qty-down border bg-light" data-id="pro1"><i class="fas fa-angle-down"></i></button>
                                        <input type="text" data-id="pro1" class="qty_input border px-2 w-50 bg-light" disabled value="1" placeholder="1">
                                        <button data-id="pro1" class="qty-up border bg-light"><i class="fas fa-angle-up"></i></button>
                                    </div>
                                </div><br>
                                <!-- !product qty section -->
                            </div>
                        </div>

                    <div class="col-12">
                        <h6 class="font-rubik">Product Description</h6>
                        <hr>
                        <p class="font-rale font-size-14">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat inventore vero numquam error est ipsa, consequuntur temporibus debitis nobis sit, delectus officia ducimus dolorum sed corrupti. Sapiente optio sunt provident, accusantium eligendi eius reiciendis animi? Laboriosam, optio qui? Numquam, quo fuga. Maiores minus, accusantium velit numquam a aliquam vitae vel?</p>
                        <p class="font-rale font-size-14">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellat inventore vero numquam error est ipsa, consequuntur temporibus debitis nobis sit, delectus officia ducimus dolorum sed corrupti. Sapiente optio sunt provident, accusantium eligendi eius reiciendis animi? Laboriosam, optio qui? Numquam, quo fuga. Maiores minus, accusantium velit numquam a aliquam vitae vel?</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- !Product -->
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
    <script src="./js/index.js"></script>
</body>
</html>
