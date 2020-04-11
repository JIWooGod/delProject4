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
	
function reservationCancel(){
	var con_test = confirm("예약을 취소 하시겠습니까?");
	if(con_test == true){
	  alert("${detail.userName}님의 예약이 취소되었습니다")
	  location.href = "reservationDelete?id=${detail.memId}&userPh=${detail.userPh}&no=${detail.rmbkNo}";
	}
	else if(con_test == false){
		return false;
	}
}
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
				<div class='title'>INFORMATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<br/><br/>
					<div class='tl' align = center>${detail.userName }님의 예약 정보입니다.</div>
				
			



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1" float = right>
					<div class="hs_reservation_left" width = 10%>
							<ul class="hs_reservation_litt">
									<li><strong>성명:</strong> 
										  ${detail.userName}
									</li>
									<li><strong>연락처:</strong> 
										 ${detail.userPh}
									</li>
									<li><strong>호 실:</strong> 
										 ${detail.roomNo}호
									</li>
									
									
									<li><strong>객실등급:</strong> 
										<c:if test="${ detail.roomGrade eq 'standard'}">
											스탠다드
										</c:if>
										<c:if test="${ detail.roomGrade eq 'deluxe'}">
											디럭스
										</c:if>
										 <c:if test="${ detail.roomGrade eq 'deluxeSuite'}">
											디럭스 스위트
										</c:if>
										 <c:if test="${ detail.roomGrade eq 'royalSuite'}">
											로열 스위트
										</c:if>
										 <c:if test="${ detail.roomGrade eq 'preSuite'}">
											프리미어 스위트
										</c:if>
										
										<li><strong>인원 수:</strong> 
										 ${detail.rmbkPeople}명
									</li>
										 
							
										 
										 
									</li>
									<li><strong>체크인:</strong> 
										   <fmt:formatDate value="${ detail.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일 14시"/>
									</li>
									<li><strong>체크아웃:</strong> 
										 <fmt:formatDate value="${ detail.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일 12시"/>
									</li>
									
									
									
									
								</ul>
						</div>
						<div class="hs_reservation_right">
							<ul class="hs_reservation_litt">
									
									<li><strong>침대:</strong> 
										 <c:if test="${detail.roomBed eq 'double'}">
										 더블
										 </c:if>
										  <c:if test="${detail.roomBed eq 'tween'}">
										 트윈
										 </c:if>
										  <c:if test="${detail.roomBed eq 'family'}">
										 패밀리
										 </c:if>
									</li>
									<li>DoNotDisturb: 
										   <c:if test="${detail.dndMode == null}">
											선택안함
											</c:if>
											 <c:if test="${detail.dndMode != null}">
											선택
											</c:if>
									</li>
									<li>깃털없는 객실:
										 <c:if test="${detail.noFeader == null}">
											선택안함
											</c:if>
											 <c:if test="${detail.noFeader != null}">
											선택
											</c:if>
									</li>
									<li>장애인 편의 객실: 
										<c:if test="${detail.uncomFort == null}">
											선택안함
											</c:if>
											 <c:if test="${detail.uncomFort != null}">
											선택
											</c:if>
									</li>
									<li><strong>특별요청:</strong> 
										<c:if test="${detail.rmbkOption == null}">
											없음
										</c:if>
										<c:if test="${detail.rmbkOption != null}">
											${detail.rmbkOption}
										</c:if>
									</li>
									<li><strong>예약일시:</strong> 
										  <fmt:formatDate value="${ detail.rmbkDate }" type = "date" pattern="yyyy년MM월dd일 hh시 mm분"/>
									</li>
									<li><strong>결제금액:</strong> 
										  ${detail.rmbkPrice} KRW
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
							<a href="manager" class="hs_reservation_btn_poin"
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