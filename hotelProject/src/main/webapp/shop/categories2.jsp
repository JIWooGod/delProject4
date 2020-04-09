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
    <title>DelLuna OnlineShop</title>

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

   <!-- Header -->
	<jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 
    
   <!-- 사이드메뉴 -->
    <jsp:include page="./shopInclude/shopSideMenu.jsp" flush="true" /> 
  
    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <c:forEach var="cate" items="${goodsCateList}" varStatus="status" begin="0" end="0">
                        <h2>${cate.goodsCategory }<span>.</span></h2>
                        <a class="active" href="main">Home</a>
                        <a href="categories">Product</a>
                        <a>${cate.goodsCategory }</a>     
                        </c:forEach>         
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Categories Page Section Begin -->
    <section class="categories-page spad">
        <div class="container">
            <div class="categories-controls">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="categories-filter">
                            <div class="cf-left">
                                <form action="#">
                                    <select class="sort">
                                        <option value="">Sort by</option>
                                        <option value="">Orders</option>
                                        <option value="">Newest</option>
                                        <option value="">Price</option>
                                    </select>
                                </form>
                            </div>
                            <div class="cf-right">
                                <span>20 Products</span>
                                <a href="#">2</a>
                                <a href="#" class="active">4</a>
                                <a href="#">6</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div class="row">
                <c:forEach var="goods" items="${goodsCateList }" varStatus="status">
                <div class="col-lg-3 col-md-6">
                    <div class="single-product-item">
                        <figure>
                        <c:forTokens items="${goods.goodsPic }" delims="-"
									var="goodsPic" varStatus="status">
									<c:if test="${status.index == 0}">
										<img src="../shop/img/product/${goodsPic }" />
									</c:if>
									</c:forTokens>
                        
                            <div class="p-status">new</div>
                            <div class="hover-icon">
                                <a href="img/products/img-5.jpg" class="pop-up"><img src="img/icons/zoom-plus.png"
                                        alt=""></a>
                                        
                            </div>
                        </figure>
                        <div class="product-text">
                            <a href="product?code=${goods.goodsCode }">
                                <h6>${goods.goodsName }</h6>
                            </a>
                            <p><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${goods.goodsPrice }" /> </p>
                        </div>
                    </div>
                </div>
                </c:forEach>
               </div>
               
              

            <div class="more-product">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="#" class="primary-btn">Load More</a>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
    <!-- Categories Page Section End -->

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
