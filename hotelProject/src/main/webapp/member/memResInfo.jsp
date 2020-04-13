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
<style>

</style>
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
				<div class='title'>예약 내역</div>
				<div class='line'></div>
			</div>
		
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<br/><br/>
			
				<div class='con'>
				<div class="hs_reservation">
					<c:if test="${ !empty resList }">
		<table class = "table2"id = "table2" width=100% border="1" cellpadding="0" cellspacing="0">
			<tr>
				<td>회원 아이디</td>
				<td>예약자 이름</td>
				<td>예약자 전화번호</td>
				<td>예약날짜</td>
				<td>예약시간</td>
				<td>예약 테이블(룸)번호</td>
				<td>예약 메뉴</td>
				<td>결제 금액</td>
			</tr>
			<c:forEach items="${ resList }" var="l">
			<tr>
				<td>${ l.memId }</td>
				<td>${ l.resName }</td>
				<td>${ l.resTel }</td>
				<td>${ l.fromdate }</td>
				<td>${ l.resTime }</td>
				<td>${ l.rstTbl }</td>
				<td>${ l.menuName }</td>
				<td>${ l.menuPrice }</td>
			</tr>
			</c:forEach>
		</table>
	</c:if>
					<c:if test="${ empty resList }">
	예약목록이 없습니다.
</c:if>
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