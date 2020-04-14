<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="./dining/diningcss/dining.css">
<link rel="stylesheet" href="js/rolling.css" media="screen">
<link rel="stylesheet" href="css/slide.css" media="screen">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery.rolling.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script type="text/javascript">
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlsContainer: $(".custom-controls-container"),
	customDirectionNav: $(".custom-navigation a"),
	slideshowSpeed :4000
  });
});

</script>

<!--상단메뉴시작-->
		<jsp:include page="../includePage/Header.jsp" flush="true" /> 
		<!--상단메뉴끝-->

<div id='content_wrapper'>
	
		<div id='sub_slide'>
		<li class='slide5'>&nbsp;</li>
	</div>

	<div class='sub_menu'>
		<div class='box'>
			<span class='subMENUout'><a href='dining1'>궁궐</a></span>
			<span class='subMENUout'><a href='dining2'>황룡</a></span>
			<span class='subMENUout'><a href='dining3'>더 델루나</a></span>
			<span class='subMENUout'><a href='dining4'>보나베띠</a></span>
			<span class='subMENUon'><a href='dining5'>슈크르 앤 미엘</a></span>
			<span class='subMENUout'><a href='dining6'>더 블루</a></span>
		</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>슈크르 앤 미엘</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>
	<div class='sub_detail'>
</div>
<div class='sub_room'>
	<!--객실미리보기시작-->
	<div id="main_bn">
		<div class="flexslider" align="center">
			<img alt="" src="dining/img/dining5detail.png">
		</div>
	</div>
	<!--객실미리보기끝-->
</div>
<div class='sub_hallinfo'>
	<div class='title'>INFORMATION</div>
	<div class='box'>
		<div class='basic'>
			<span>베이커리</span>
		</div>
	</div>

</div>

<div class='line_height30'></div>
	<div class='line_height50'></div>
		</div>
</div>

<div id='tail_wrapper'>
	<div class='box'>

		<div class='line_height40'>&nbsp;</div>
		<div class='line_box'></div>
		<div class='line_height20'>&nbsp;</div>

		<div class='logo'>
			<img src='./img/t_logo.png'>
		</div>
		<div class='content'>
			<div class='company'>
				<a href='/about_1.html'>호텔소개</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='/terms_1.html'>이용약관</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href='/terms_2.html'>개인정보취급방침</a>
			</div>
			<div class='copy'>
				상호 : 그랜드힐스턴 <span>|</span> 대표 : 이순자 <span>|</span> 사업자등록번호 : 128-01-50805<span>|</span> 통신판매업신고 : <br>
				주소 : 전라북도 전주시 완산구 서곡5길 22-5 <span>|</span> 대표전화 : 063-251-8000 <span>|</span> Fax :  063-212-0000<span>|</span> Email : gh.1700@daum.net<br>
				COPYRIGHT © 2018 그랜드힐스턴 ALL RIGHTS RESERVED. 
			</div>
		</div>
		<div class='sns'>
			
		</div>
	</div>
</div>
</body>
</html>