<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DelLuna OnlineShop</title>
</head>
<body>
	<link rel="stylesheet" href="/hotelProject/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/style.css" type="text/css">

   <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="main"><img src="/hotelProject/shop/img/logo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="/hotelProject/shop/img/icons/search.png" alt="" class="search-trigger">
                    <img src="/hotelProject/shop/img/icons/man.png" alt="">
                    <a href="cart">
                        <img src="/hotelProject/shop/img/icons/bag.png" alt="">
                        
                    </a>
                </div>
                <c:if test="${ empty authInfo }">
                <div class="user-access">
                    <a href="/hotelProject/delshop/signInForm">Sign In</a>
                 
                </div>
                </c:if>
                  <c:if test="${ !empty authInfo }">
                <div class="user-access">
                    <a href="/hotelProject/delshop/logout">Log Out</a>
                 
                </div>
                </c:if>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="main">Home</a></li>
                        <li><a href="categories">Shop</a>
                            <ul class="sub-menu">
                                <li><a href="categories">Product Page</a></li>
                                <li><a href="cart">Shopping Card</a></li>
                                <li><a href="check-out.html">Check out</a></li>
                            </ul>
                        </li>
                        <li><a href="./product-page.html">About</a></li>
                        <li><a href="./check-out.html">Contact</a></li>
                        <li><a href="/hotelProject/main">Hotel</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src='/hotelProject/shop/img/icons/delivery.png' alt="">
                        <p>100,000원 이상 구매시 무료배송</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src='/hotelProject/shop/img/icons/voucher.png' alt="">
                        <p>20% 주변관광지 할인제공</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src='/hotelProject/shop/img/icons/sales.png' alt="">
                    <p>10~30% 할인 및 특가상품 판매</p>
                </div>
                
                </div>
            </div>
        </div>
    </div>
</body>
</html>