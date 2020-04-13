<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>



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
	<div style=display:none >
	<form action="InsertCart" method="post" name="goodsCart" enctype="application/x-www-form-urlencoded" >
		<input name="goodsPrice" type="text" size="20" maxlength="20" value="${goodsD.goodsPrice }" />
		<input name="goodsCode" type="text" size="20" maxlength="30" value="${goodsD.goodsCode }" />
		<input name="goodsName" type="text" size="50" maxlength="100" value="${goodsD.goodsName }" />
	</form>
	</div>
	
	
	<!-- Header -->
	 <jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
   <!-- 사이드메뉴 -->
    
       <jsp:include page="./shopInclude/shopSideMenu.jsp" flush="true" /> 
    
    <!-- Page Add Section Begin -->        
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Shirts<span>.</span></h2>
                        <a href="#">Home</a>
                        <a href="#">Dresses</a>
                        <a class="active" href="#">Night Dresses</a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="/hotelProject/shop/img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->    
    
    
    <!-- Product Page Section Beign -->

    <section class="product-page">
        <div class="container">
            
            <div class="row">
                <div class="col-lg-6">
                    <div class="product-slider owl-carousel">
                          <c:forTokens items="${goodsD.goodsPic }" var="goodsPic"  delims="-"  varStatus="status">
									<c:if test="${status.index == 0}">
										<div class="product-img">
											<figure>
												<img src="../shop/img/product/${goodsPic }" />
										  		<div class="p-status">new</div>
                           				 	</figure>
                           				</div> 
									</c:if>
									<c:if test="${status.index == 1}">
										<div class="product-img">
											<figure>
												<img src="../shop/img/product/${goodsPic }" />
										  		<div class="p-status">new</div>
                           				 	</figure>
                           				</div> 
									</c:if>
							</c:forTokens>
                    </div>
                  </div>  
               
                <div class="col-lg-6">
                    <div class="product-content">
                        <h2>${goodsD.goodsName }</h2>
                        <div class="pc-meta">
                            <h5><fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${goodsD.goodsPrice }" /></h5>
                            <div class="rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                            </div>
                        </div>
                        <p>${goodsD.goodsOpt }</p>
                        <ul class="tags">
                            <li><span>Category :</span> ${goodsD.goodsCategory }</li>
                        </ul>
                 
                        <div class="product-quantity">
                            <div class="pro-qty">
                                <input type="text" value="1">
                            </div>
                        </div>
                        <a href="#" class="primary-btn pc-btn">구매하기</a> &nbsp;&nbsp;
                        <a href="javascript:goodsCart.submit()" class="primary-btn pc-btn">장바구니</a>
                        <ul class="p-info">
                            <li>Product Information</li>
                            <li>Reviews</li>
                            <li>Product Care</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Page Section End -->

    <!-- Related Product Section Begin -->
    <section class="related-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Related Products</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="/hotelProject/shop/img/products/img-1.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>Green Dress with details</h6>
                            <p>$22.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="/hotelProject/shop/img/products/img-2.jpg" alt=""></a>
                            <div class="p-status sale">sale</div>
                        </figure>
                        <div class="product-text">
                            <h6>Yellow Maxi Dress</h6>
                            <p>$25.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="/hotelProject/shop/img/products/img-3.jpg" alt=""></a>
                            <div class="p-status">new</div>
                        </figure>
                        <div class="product-text">
                            <h6>One piece bodysuit</h6>
                            <p>$19.90</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-product-item">
                        <figure>
                            <a href="#"><img src="/hotelProject/shop/img/products/img-4.jpg" alt=""></a>
                            <div class="p-status popular">popular</div>
                        </figure>
                        <div class="product-text">
                            <h6>Blue Dress with details</h6>
                            <p>$35.50</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    </div>
    <!-- Related Product Section End -->
	
   
   
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