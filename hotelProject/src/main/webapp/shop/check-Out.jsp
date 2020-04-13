<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Violet | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
 
    
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
    <!-- Header End -->

    <!-- Page Add Section Begin -->
    <section class="page-add">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="page-breadcrumb">
                        <h2>Checkout<span>.</span></h2>
                    </div>
                </div>
                <div class="col-lg-8">
                    <img src="img/add.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <!-- Page Add Section End -->

    <!-- Cart Total Page Begin -->
    <section class="cart-total-page spad">
        <div class="container">
            <form action="#" class="checkout-form">
                <div class="row">
                    <div class="col-lg-12">
                        <h3>주문자 정보</h3>
                    </div>
                   	<c:forEach var="mem" items="${memList }" varStatus="status">
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">이름*</p>
                            </div>
                            <div class="col-lg-5">
                                <input type="text" value="${mem.memName }" >
                            </div>
                          
                        </div>
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">주소*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" value="${mem.memAddr }">
                                <input type="text">
                            </div>
                        </div>
                       
                        <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">연락처*</p>
                            </div>
                            <div class="col-lg-10">
                                <input type="text" value="${mem.memTel }">
                            </div>
                        </div>
                     	</c:forEach>
                        
                        <c:if test="${ !empty rbChk }" >
                         <div class="row">
                            <div class="col-lg-2">
                                <p class="in-name">배송</p>
                            </div>
                            <div class="col-lg-10">
                               객실배달 서비스<br/> 객실 이용일선택 :
                               <select name="ship">
                               <c:forEach var="rb" items="${rbChk }" varStatus="status">
                               <option value="${rb.rmbkChkIn }">${rb.rmbkChkIn }</option>
                               </c:forEach>
                               </select>
                            </div>
                        </div>
                        </c:if>
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <div class="diff-addr">
                                    <input type="radio" id="one">
                                    <label for="one">Ship to different address</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="order-table">
                            <c:forEach var="carts" items="${cartList }" varStatus="status">
                            <div class="cart-item">
                                <span>Product</span>
                                <p class="product-name">${carts.goodsName } </p>
                            </div>
                            <div class="cart-item">
                                <span>수량</span>
                                <p>${carts.cartQty }</p>
                            </div>
                            <div class="cart-item">
                                <span>금액</span>
                                <p><fmt:formatNumber type="currency" value="${carts.gAvg }"/></p>
                            </div>
                            </c:forEach>                          

 							<!-- 배송비 무료 -->
                            <c:forEach var="cart" items="${cartList }" varStatus="status" end="0">
                            <c:if test= "${cart.aSum > '100000'}" >
                            <div class="cart-item">
                            	<span>배송비</span>
                          		<p><fmt:formatNumber type="currency" value="0"/></p>
							<div class="cart-total">
								<span>Total</span>
								<p><fmt:formatNumber type="currency" value="${cart.aSum + '0' }"/></p>
							</c:if>
							<!-- 배송비 추가 -->
							<c:if test= "${cart.aSum < '100000'}" >
						    <div class="cart-item">
                            	<span>배송비</span>
                          		<p><fmt:formatNumber type="currency" value="3000"/></p>
							<div class="cart-total">
								<span>Total</span>
								<p><fmt:formatNumber type="currency" value="${cart.aSum + '3000' }"/></p>
							</c:if>
							</c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="payment-method">
                            <h3>Payment</h3>
                            <ul>
                                <li>
									dddd
                                </li>
                            </ul>
                            <button type="submit">Place your order</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Cart Total Page End -->

    <!-- Footer Section Begin -->
	<jsp:include page="./shopInclude/shopFooter.jsp" flush="true" /> 
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>