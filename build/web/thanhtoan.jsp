<%-- 
    Document   : thanhtoan
    Created on : 3 thg 7, 2024, 22:02:52
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
    <link href="css/csstt.css" rel="stylesheet" type="text/css">
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

    <main id="main-site">
        
      <!-- Owl carousel -->
      <section id="banner-area">
        <div class="owl-carousel owl-theme">
          <div class="item">
            <img src="img/Banner1.png" alt="Banner1">
          </div>
          <div class="item">
            <img src="img/Banner2.png" alt="Banner2">
          </div>
          <div class="item">
            <img src="img/Banner1.png" alt="Banner3">
          </div>
        </div>
      </section>
    </main>

    <form onSubmit={placeOrder} class='place-order'>
        <div class="place-order-left">
          <p class="title">Thông tin thanh toán</p>
          <div class="multi-fields">
            <input required name='firstName' onChange={onChangeHandler} value="" type="text" placeholder='First name' />
            <input required name='lastName' onChange={onChangeHandler} value="" type="text" placeholder='Last name' />
          </div>
  
          <input required name='email' onChange={onChangeHandler} value="" type="email" placeholder='Email address' />
          <input required name='street' onChange={onChangeHandler} value="" type="text" placeholder='Street' />
  
          <div class="multi-fields">
            <input required name='city' onChange={onChangeHandler} value="" type="text" placeholder='City' />
            <input required name='state' onChange={onChangeHandler} value="" type="text" placeholder='State' />
          </div>
          
          <div class="multi-fields">
            <input required name='zipcode' onChange={onChangeHandler} value="" type="text" placeholder='Zip code' />
            <input required name='country' onChange={onChangeHandler} value="" type="text" placeholder='Country' />
          </div>
          <input required name='phone' onChange={onChangeHandler} value="" type="text" placeholder='Phone' />
        </div>
        <div class="place-order-right">
        <div class="cart-total">
            <h2>Thanh toán</h2>
            <div>
              <div class="cart-total-details">
                <p>Vận chuyển</p>
                <p></p>
              </div>
              <hr />
              <div class="cart-total-details">
                <b>Tổng tiền</b>
                <b>VND</b>
              </div>
            </div>
            <button type='submit'>TIẾN HÀNH THANH TOÁN</button>
          </div>
        </div>
      </form>





    
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
</body>
</html>
