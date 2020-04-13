<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="room/css/room.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>

$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide",
	controlsContainer: $(".custom-controls-container"),
	customDirectionNav: $(".custom-navigation a"),
	slideshowSpeed :4000
  });
});

function kakaopay(){
		writeF.submit();
}





function selectRoom(n){
	//location.href="ajaxRoom?n="+n+"&rmbkChkIn=${ reservation.rmbkChkIn }&rmbkChkOut=${ reservation.rmbkChkOut }&rmbkView=${reservation.roomView }&rmbkGrade=${room.roomGrade }&rmbkBed=${reservation.roomBed}";
  	  $.ajax({
	      type : "post",
	      url : "ajaxRoom",
	      dataType : "html", 
	      data : {"n" : n , "rmbkChkIn" : "${ reservation.rmbkChkIn }","rmbkChkOut" : "${ reservation.rmbkChkOut }","rmbkView" : "${reservation.roomView }","rmbkGrade" : "${room.roomGrade }","rmbkBed" : "${reservation.roomBed}"} ,
	      success: function(result){
	         $("#selectroom").html(result);
	      },
	      error: function() {
	         alert('ajax error');
	         return;
	      }
	   });  
}
selectRoom(4)

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
				<div class='title'>RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			
		<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<c:if test="${room.roomGrade eq 'standard' }">
					<div class='tl'>스탠다드</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxe' }">
					<div class='tl'>디럭스</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'deluxeSuite' }">
					<div class='tl'>디럭스 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'royalSuite' }">
					<div class='tl'>로열 스위트</div>
				</c:if>
				<c:if test="${room.roomGrade eq 'preSuite' }">
					<div class='tl'>프리미어 스위트</div>
				</c:if>



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
								</c:forTokens>
							</td>
						</tr>
					</table>
					</div>
						<div class="hs_reservation_right"style="padding: 0 20px 0 50px;width:30%">
							<ul class="hs_reservation_litt">
									<li>
										<strong>체크인</strong> &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일"/>
								
									</li>
									<li><strong>체크아웃</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									
										 		
									<li><strong>인원 수</strong> 
										 &nbsp; ${reservation.rmbkPeople} 명
									</li>
										<li><strong>숙박일</strong> 
										 &nbsp; ${reservation.roomDays} 일
									</li>
									
							</ul>
						</div>
						
						
				</div>
				</div>
				</div>
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
	
					<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box2">
						<form name="writeF" id="writeF" method="POST" action="kakaoPay">
							<input type="hidden" name="fromdate" value="${ reservation.rmbkChkIn }">
							<input type="hidden" name="todate" value="${ reservation.rmbkChkOut }"> 
							<input type="hidden" name="people" value="${reservation.rmbkPeople}">
							<input type="hidden" name="days" value="${reservation.roomDays}"> 
							<input type="hidden" name="roomGrade" value="${room.roomGrade}">
							<input type="hidden" name = "userName" value = "${reservation.userName }">
							<input type= "hidden" name = "userPh1" value = "${reservation.userPh }">
							<input type = "hidden" name = "roomBed" value = "${reservation.roomBed}">
							<input type = "hidden" name = "rmbkContent" value = "${reservation.rmbkOption }">
							<input type = "hidden" name = "noFeader" value = "${reservation.noFeader}">
							<input type = "hidden" name = "uncomfort" value = "${reservation.uncomFort}">
							<input type = "hidden" name = "roomPrice" value = "${room.roomPrice * reservation.roomDays}">
							<input type = "hidden" name = "dndMode" value = "${reservation.dndMode}">
						
							<!-- 객실전망 선택 -->
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;width:20%">
							<h3 class="hs_reservation_title">예약 정보</h3>
								<ul class="hs_reservation_room_select">
								<li>
									<strong>성명:</strong>${reservation.userName }
								</li>
								<li>
								<strong>연락처:</strong> ${reservation.userPh }
								</li>
								<li>
								<strong>객실 전망:</strong>
								<c:if test="${reservation.roomView eq 'oceanView'}">
										오션 뷰
								</c:if>
								<c:if test="${reservation.roomView eq 'cityView'}">
										도심 뷰
								</c:if>
								</li>
								<li>
									<strong>침대 유형:</strong>
									<c:if test="${reservation.roomBed eq 'double'}">
										더블
									</c:if>
									<c:if test="${reservation.roomBed eq 'tween'}">
										트윈
									</c:if>
									<c:if test="${reservation.roomBed eq 'family'}">
										패밀리
									</c:if>
								</li>
								</li>
								<li>
									<strong>DoNotDisturb:</strong>
									<c:if test="${reservation.dndMode == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.dndMode != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>깃털 알레르기:</strong>
									<c:if test="${reservation.noFeader == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.noFeader != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>장애인 편의 시설:</strong>
									<c:if test="${reservation.uncomFort == null}">
										선택안함
									</c:if>
									<c:if test="${reservation.uncomFort != null}">
										선택
									</c:if>
								</li>
								<li>
									<strong>특별 요청사항:</strong>
									${reservation.rmbkOption }
								</li>
									
								</ul>
								<br/>
								<h3 class="hs_reservation_title">총 결제 금액 </h3><strong>KRW ${room.roomPrice * reservation.roomDays} </strong>
								<br/>
								<br/>
							</div>
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;width:15%" align = center>
							<h3 class="hs_reservation_title"> 층 선택</h3>
								
								<input type = "button" name = "floor" value = "9F"  onclick="selectRoom(9);"><br/>
								<input type = "button" name = "floor" value = "8F"  onclick="selectRoom(8);"><br/>
								<input type = "button" name = "floor" value = "7F"  onclick="selectRoom(7);"><br/>
								<input type = "button" name = "floor" value = "6F"  onclick="selectRoom(6);"><br/>
								<input type = "button" name = "floor" value = "5F"  onclick="selectRoom(5);"><br/>
								<input type = "button" name = "floor" value = "4F"  onclick="selectRoom(4);"><br/>
								<br/>
							<br/>
							</div>
							<br/>
						
				<div class="hs_reservat" id = "selectroom" align = center >
				
					</div>
				</div>
			
							
						
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set" id="btnNext">
							<a href="javascript:kakaopay()" class="hs_reservation_btn_poin" style="color: #FFFFFF;">결제하기</a>
						</div>
					</div>
					
					</form>
				</div>
				<div class="hs_reservation">
				<c:forEach items="${reservationChk }" var="chkeck">
				${chkeck.roomNo }
				</c:forEach>
					</div>
				</div>
		</div>
	
	</div>
	</div>
	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>