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
    <title>DelLuna Cart</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

	 <style >
    	#qbtn{
    	color: #000000;
    	text-decoration: none;
		background-color: transparent;
    	}
    </style>
    <!-- Css Styles -->
    <link rel="stylesheet" href="/hotelProject/shop/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/hotelProject/shop/cssnice-select.css" type="text/css">
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

    <!-- Page Add Section Begin -->
    <section class="page-add cart-page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Cart<span>.</span></h2> 
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="/hotelProject/shop/img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Cart Page Section Begin -->
    <div class="cart-page">
        <div class="container">
            <div class="cart-table">
                <table>
                    <thead>
                        <tr>
                            <th class="product-h">Product</th>
                            <th>Price</th>
                            <th class="quan">Quantity</th>
                            <th>Total</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:if test="${empty cartList}">
                        	<td class="product-col">
                                
                                <div class="p-title">
                                    <h5>장바구니가 비어있습니다.</h5>
                                </div>
                            </td>
                        </c:if>
                        <c:if  test="${!empty cartList}">
                        <c:forEach var="carts" items="${cartList }" varStatus="status">
                        <tr>
                            <td class="product-col">
                                <img src="img/product/product-1.jpg" alt="">
                                <div class="p-title">
                                    <h5>${carts.goodsName }</h5>
                                </div>
                            </td>
                            <td class="price-col"><fmt:formatNumber type="currency" value="${carts.cartPrice }" /></td>
                            <td class="quantity-col">
                                <div class="pro-qty">
                                	<span class="dec qtybtn"><a href="cartQtyDown?name=${carts.goodsCode }-${carts.cartQty }" id ="qbtn" >-</span></a>
                                    <input type="text" value="${carts.cartQty }">
                                    <span class="inc qtybtn"><a href="cartQtyUp?name=${carts.goodsCode }" id ="qbtn" >+</a></span>
                                </div>
                            </td>
                            <td class="total"><fmt:formatNumber type="currency" value="${carts.gAvg }"/></td>
                    
                            <td class="product-close"><a href="cartOneDel?code=${carts.goodsCode }" id ="qbtn" >x</a></td>
                            
                        	</c:forEach>
                        	</c:if>
                        	
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="cart-btn">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="coupon-input">
                            <form action="codeChk" method="get" name="coupon" >
                            <input type="text" name="cd" placeholder="Enter cupone code">
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-5 offset-lg-1 text-left text-lg-right">
                        <div class="site-btn clear-btn"><a href="javascript:coupon.submit();" id="qbtn" >쿠폰 입력</a></div>
                        <div class="site-btn update-btn"><a href="cartDel" id="qbtn" >Clear Cart</a></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="shopping-method">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="shipping-info">
                            <h5>Choose a shipping</h5>
                            <div class="chose-shipping">
                                <div class="cs-item">
                                	<form action="chkOut" method="get" name="shipment" >
                                    <input type="radio" name="cs" id="one" value="a">
                                    <label for="one" >
                                        일반 택배배송
                                        <span>CJ대한통운 배송일 1-3일 </span>
                                    </label>
                                </div>
                                <div class="cs-item">
                                    <input type="radio" name="cs" id="two" value="b">
                                    <label for="two">
                                        객실배송 
                                         <span>객실 이용일 3일전까지만 이용가능하며 <br/>날짜를 초과한경우 택배로 발송됩니다. </span>
                                    </label>
                                </div>
                                <div class="cs-item last">
                                    <input type="radio" name="cs" id="three" value="c">
                                    <label for="three">
                                        객실배송 + 홈배달서비스
                                        <span>집으로 가는 발걸음도 가볍게 홈배달 서비스를 같이 이용해 보세요</span>
                                    </label>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="total-info">
                            <div class="total-table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Total</th>
                                            <th>Shipping</th>
                                            <th class="total-cart">Total Cart ${chkCode.cCode }</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                        
                                            <c:forEach var="cart" items="${cartList }" varStatus="status" end="0">
                                            <td class="total"><fmt:formatNumber type="currency" value="${cart.aSum }"/></td>
                                            <!-- 배송비 무료 -->
                                            <c:if test= "${cart.aSum > '100000'}" >
                                          		<c:if test="${ empty chkCode }">
                                            		<td class="shipping"><fmt:formatNumber type="currency" value="0"/></td>
                                            		<td class="total-cart-p"><fmt:formatNumber type="currency" value="${cart.aSum + '0' }"/></td>
                                            	</c:if>
                                            	<c:if test="${ !empty chkCode }">
                                            		<td class="shipping"><fmt:formatNumber type="currency" value="0"/></td>
                                            		<td class="total-cart-p"><fmt:formatNumber type="currency" value="${cart.aSum * '0.9' }"/></td>
                                            	</c:if>
                                            </c:if>
                                            <c:if test= "${cart.aSum > '100000' && !empty chkCode}" >
                                            <c:set var="i" value="0" />
                                            <td class="shipping"><fmt:formatNumber type="currency" value="${i }"/></td>
                                            <td class="total-cart-p"><fmt:formatNumber type="currency" value="${cart.aSum * '0.9' }"/></td>
                                            </c:if>
                                           
                                            <!-- 배송비 추가 -->
                                            <c:if test= "${cart.aSum < '100000' && empty chkCode}" >
                                            <c:set var="i" value="3000" />
                                            <td class="shipping"><fmt:formatNumber type="currency" value="${i }"/></td>
                                            <td class="total-cart-p"><fmt:formatNumber type="currency" value="${cart.aSum + '3000' }"/></td>
                                            </c:if>
                                            <c:if test= "${cart.aSum < '100000' && !empty chkCode}" >
                                            <c:set var="i" value="0" />
                                            <td class="shipping"><fmt:formatNumber type="currency" value="${i }"/></td>
                                            <td class="total-cart-p"><fmt:formatNumber type="currency" value="${cart.aSum * '0.9' }"/></td>
                                            </c:if>
                                            
                                            </c:forEach>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">
                                <div class="col-lg-12 text-right">
                                    <a href="javascript:shipment.submit();" class="primary-btn chechout-btn">Proceed to checkout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart Page Section End -->

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