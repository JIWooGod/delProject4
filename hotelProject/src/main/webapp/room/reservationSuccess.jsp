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
					<div class="hs_reservation_left">
					<table>
						<tr align="center">
							<td><c:forTokens items="${room.roomPic }" delims="-"
									var="roomPic" varStatus="status">
									<c:if test="${status.index == 0}">
										<img src="room/update/${roomPic }" width = "500px"/>
									</c:if>
								</c:forTokens></td>
					
						</tr>
					</table>
					</div>
						<div class="hs_reservation_left" width = 20%>
							<ul class="hs_reservation_litt">
									<li><strong>성명:</strong> 
										 &nbsp; ${reservationOk.userName}
									</li>
									<li><strong>연락처:</strong> 
										 &nbsp; ${reservationOk.userPh}
									</li>
									<li><strong>체크인:</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservationOk.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>체크아웃:</strong> 
										 &nbsp; <fmt:formatDate value="${ reservationOk.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>호 수:</strong> 
										 &nbsp; ${reservationOk.roomNo}호
									</li>
									<li><strong>결제금액:</strong> 
										 &nbsp; ${reservationOk.rmbkPrice} KRW
									</li>
									
									
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