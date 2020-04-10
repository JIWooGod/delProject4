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
					<c:if test = "${!empty myReservation }">
				
					<table class = "table2"id = "table2" width=100% border="1" cellpadding="0" cellspacing="0">

						<tr align="center" valign="middle" bordercolor="#333333">
						
							<td style="font-family: Tahoma; font-size: 10pt;" width="10%">
								<div align="center"><strong>호 수</strong></div>
							</td>
							<td style="font-family: Tahoma; font-size:10pt;" width="10%">
								<div align="center"><strong>객실 등급</strong></div>
							</td>
							<td style="font-family: Tahoma; font-size: 10pt;" width="10%">
								<div align="center"><strong>인원 수</strong></div>
							</td>
							<td style="font-family: Tahoma; font-size: 10pt;" width="10%">
								<div align="center"><strong>체크인 날짜</strong></div>
							</td>
							<td style="font-family: Tahoma; font-size: 10pt;" width="10%">
								<div align="center"><strong>체크아웃 날짜</strong></div>
							</td>
							
							<td style="font-family: Tahoma; font-size: 10pt;" width="10%">
								<div align="center"><strong>예약 날짜</strong></div>
							</td>
					
						</tr>
				
					
					<c:forEach var="my" items="${myReservation }" varStatus="status" step="1">
							
							<tr align="left" valign="middle" bordercolor="#333333"
								onmouseover="this.style.backgroundColor='F8F8F8'"
								onmouseout="this.style.backgroundColor=''">
							
								<td >
								<a href = "reservationDetail?no=${my.rmbkNo}" style="color: #FFFFFF;"><div align="center">${my.roomNo }호</div></a>
								</td>
								<td >
									<c:if test="${my.roomGrade eq 'standard'}">
									<div align="center">스탠다드</div>
									</c:if>
									<c:if test="${my.roomGrade eq 'deluxe'}">
									<div align="center">디럭스</div>
									</c:if>
									<c:if test="${my.roomGrade eq 'deluxeSuite'}">
									<div align="center">디럭스 스위트</div>
									</c:if>
									<c:if test="${my.roomGrade eq 'royalSuite'}">
									<div align="center">로열 스위트</div>
									</c:if>
									<c:if test="${my.roomGrade eq 'preSuite'}">
									<div align="center">프리미어 스위트</div>
									</c:if>
								</td>
								<td >
									<div align="center">${my.rmbkPeople }명</div>
								</td>
								<td >
									<div align="center"> <fmt:formatDate value="${ my.rmbkChkIn }" type = "date" pattern="yyyy년 MM월 dd일 14시"/></div>
								</td>
								
								<td>
										<div align="center"><fmt:formatDate value="${ my.rmbkChkOut }" type = "date" pattern="yyyy년 MM월 dd일 12시"/></div>
								</td>
								<td>
										<div align="center"><fmt:formatDate value="${ my.rmbkDate }" type = "date" pattern="yyyy년 MM월 dd일 hh시 "/></div>
								</td>
								
							</tr>
						
					<br />
					</c:forEach>
					
					
					</table>
					</c:if>
					<c:if test="${empty myReservation }">
					<div class='tl' align = center>예약내역이 없습니다.</div>
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