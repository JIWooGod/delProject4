<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/hotelProject/shop/css/bootstrap.min.css" type="text/css"> 
    <link rel="stylesheet" href="/hotelProject/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 
    <!-- Header Info End -->
    <!-- Header End -->

    <!-- Hero Slider Begin -->
    <section class="hero-slider">
        <div class="hero-items owl-carousel">
            <div class="single-slider-item set-bg" data-setbg='/hotelProject/shop/img/slider-1.jpg'>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg='/hotelProject/shop/img/slider-2.jpg'>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="single-slider-item set-bg" data-setbg='/hotelProject/shop/img/slider-3.jpg'>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h1>2020</h1>
                            <h2>Lookbook.</h2>
                            <a href="#" class="primary-btn">See More</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Slider End -->

    <!-- Features Section Begin -->
    <section class="features-section spad">
        <div class="features-ads">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-features-ads first">
                            <img src='/hotelProject/shop/img/icons/f-delivery.png' alt="">
                            <h4>무료배송</h4>
                            <p>10만원 이상시 객실까지 무료배송 ,<br/> 일반 택배 배송도 가능하며
                                홈배달 서비스 이용요금은 별도입니다. 델루나 쇼핑몰과 함께 가벼운 여행 떠나세요.</p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads second">
                            <img src='/hotelProject/shop/img/icons/coin.png' alt="">
                            <h4>100% 환불가능 </h4>
                            	<p>구매한 제품이 마음에 들지 않으신다구요? 델루나에서는 구입 후 7일이내 환불이 가능합니다. </p>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-features-ads">
                            <img src='/hotelProject/shop/img/icons/chat.png' alt="">
                            <h4>Online support 24/7</h4>
                            <p>무 슨 말 을 써 야 할 까 요 </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features Box -->
        <div class="features-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="single-box-item first-box">
                                    <img src='/hotelProject/shop/img/f-box-1.jpg' alt="">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Party</span>
                                        <h2>Jewelry</h2>
                                        <span class="trend-alert">Trend Allert</span>
                                        <a href="#" class="primary-btn">See More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="single-box-item second-box">
                                    <img src='/hotelProject/shop/img/f-box-2.jpg' alt="">
                                    <div class="box-text">
                                        <span class="trend-year">2020 Trend</span>
                                        <h2>Footwear</h2>
                                        <span class="trend-alert">Bold & Black</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="single-box-item large-box">
                            <img src='/hotelProject/shop/img/f-box-3.jpg' alt="">
                            <div class="box-text">
                                <span class="trend-year">2020 Party</span>
                                <h2>Collection</h2>
                                <div class="trend-alert">Trend Allert</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Features Section End -->

    <!-- Latest Product Begin -->
    <section class="latest-products spad">
        <div class="container">
            <div class="product-filter">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="section-title">
                            <h2>Latest Products</h2>
                        </div>
                        <ul class="product-controls">
                            <li data-filter="*">All</li>
                            <li data-filter=".Male">Male</li>
                            <li data-filter=".Female">Female</li>
                            <li data-filter=".Accesories">Accesories</li>
                            <li data-filter=".Tour">Tour</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row" id="product-list">
            <c:forEach var="goods" items="${goodsList }" varStatus="status">
                <div class="col-lg-3 col-sm-6 mix all ${goods.goodsCategory }">
                    <div class="single-product-item">
                        <figure>
                           <c:forTokens items="${goods.goodsPic }" delims="-"
									var="goodsPic" varStatus="status">
									<c:if test="${status.index == 0}">
										 <a href="product?code=${goods.goodsCode }">
										<img src="../shop/img/product/${goodsPic }" />
									</c:if>
							</c:forTokens>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>${goods.goodsName }</h6>
                            <p><fmt:formatNumber type="currency" value="${goods.goodsPrice }" /></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
     
        </div>
    </section>
    <!-- Latest Product End -->

    <!-- Lookbok Section Begin -->

    <!-- Lookbok Section End -->

    <!-- Logo Section Begin -->
    <div class="logo-section spad">
        <div class="logo-items owl-carousel">
            <div class="logo-item">
                <img src="/hotelProject/shop/img/logos/logo-1.png" alt="">
            </div>
            <div class="logo-item">
                <img src="/hotelProject/shop/img/logos/logo-2.png" alt="">
            </div>
            <div class="logo-item">
                <img src="/hotelProject/shop/img/logos/logo-3.png" alt="">
            </div>
            <div class="logo-item">
                <img src="/hotelProject/shop/img/logos/logo-4.png" alt="">
            </div>
            <div class="logo-item">
                <img src="/hotelProject/shop/img/logos/logo-5.png" alt="">
            </div>
        </div>
    </div>
    <!-- Logo Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="./shopInclude/shopFooter.jsp" flush="true" /> 
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="/hotelProject/shop/js/jquery-3.3.1.min.js"></script>
    <script src="/hotelProject/shop/js/bootstrap.min.js"></script>
    <script src="/hotelProject/shop/js/jquery.magnific-popup.min.js"></script>
    <script src="/hotelProject/shop/js/jquery.slicknav.js"></script>
    <script src="/hotelProject/shop/js/owl.carousel.min.js"></script>
    <script src="/hotelProject/shop/js/jquery.nice-select.min.js"></script>
    <script src="/hotelProject/shop/js/mixitup.min.js"></script>
    <script src="/hotelProject/shop/js/main.js"></script>
</body>

</html>