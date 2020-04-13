<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>

        @media (min-width: 1281px) {
            #sidebar{margin-top:300px;}
        }
        
        @media (max-width: 767px) {
             #sidebar{float: none;}
             
        }

    </style>
</head>
<body>
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

    <!-- Header Info End -->
    <!-- Header End -->

    <!-- Sidebar -->
    <div class="secWrap">
    
    <div id="sidebar">
      <!-- Search -->
     
      <!-- End Search -->
      <!-- Categories -->
      <div class="box categories">
        <h2>Categories <span></span></h2>
        <div class="box-content">
          <ul>
            <li><a href="categories">모든상품</a></li>
            <li><a href="categories2?cate=Male">남성의류</a></li>
            <li><a href="categories2?cate=Female">여성의류</a></li>
            <li><a href="categories2?cate=Accesories">악세사리</a></li>
            <li class="last"><a href="categories2?cate=Tour">여행상품</a></li>
          </ul>
        </div>
      </div>
      <!-- End Categories -->
    </div>
    <!-- End Sidebar -->

</body>
</html>