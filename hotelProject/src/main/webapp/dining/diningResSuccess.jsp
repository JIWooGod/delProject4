<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlsContainer : $(".custom-controls-container"),
			customDirectionNav : $(".custom-navigation a"),
			slideshowSpeed : 4000
		});
	});
</script>
<body>
	<jsp:include page="../includePage/Header.jsp" flush="true" />

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>


			<div class='tl'>
				<div class='line'></div>
				<div class='title'>THANK YOU</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<br/><br/>
					<div class='tl' align = center>예약이 완료 되었습니다</div>
				
			



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
					<div class="hs_reservation_left" align="center" style="width: 1200px;">
						<table border="1">
							<tr>
								<td>예약자 이름</td>
								<td>예약자 전화번호</td>
								<td>예약날짜</td>
								<td>예약시간</td>
								<c:if test="${ res3.rstNo eq 1 or res3.rstNo eq 2 }">
									<td>예약 테이블(룸)번호</td>
								</c:if>
								<td>예약 메뉴</td>
								<td>결제 금액</td>
							</tr>
							<tr>
								<td>${ res3.resName }</td>
								<td>${ res3.resTel }</td>
								<td>${ res3.fromdate }</td>
								<td>${ res3.resTime }</td>
								<c:if test="${ res3.rstNo eq 1 or res3.rstNo eq 2 }">
									<td>${ res3.rstTbl }</td>
								</c:if>
								<td>${ res3.menuName }</td>
								<td>${ res3.menuPrice }</td>
							</tr>
						</table>
					</div>
						<div class="hs_reservation_left" width = 20%>
							<ul class="hs_reservation_litt">
							
								</ul>
						</div>
				</div>
				
				</div>
			
				</div>
				
				<!-- 객실 정보 끝 -->
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
				<script language="javascript">
				<!--
					function goNext() {
						var frm = document.writeF;
						frm.submit();
					}
				//-->
				</script>
				<div class="hs_reservation_btn_set">
							<a href="main" class="hs_reservation_btn_poin"
								style="color: #FFFFFF;">메인으로</a>
						</div>
				
				</div>
	
			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>