<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

function submit1(){
	var i = 0;
	if($("#userName").val() == 0){
		document.getElementById("rspan1").innerHTML ="필수 항목입니다";
		i += 1;
	}
	if($("#userPh3").val() == ""){
		document.getElementById("rspan2").innerHTML ="필수 항목입니다";
		i += 1;
	}
	if(i <= 0){
		writeF.submit();
	}else{
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
								</c:forTokens></td>
					
						</tr>
					</table>
					</div>
						<div class="hs_reservation_right"style="padding: 0 20px 0 50px;width:30%">
							<ul class="hs_reservation_litt">
									<li><strong>체크인</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkIn }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									<li><strong>체크아웃</strong> 
										 &nbsp;  <fmt:formatDate value="${ reservation.rmbkChkOut }" type = "date" pattern="yyyy년MM월dd일"/>
									</li>
									
									<li><strong>인원 수</strong> 
										 &nbsp; ${reservation.rmbkPeople}
									</li>
										<li><strong>숙박일</strong> 
										 &nbsp; ${reservation.roomDays}
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
						<form name="writeF" id="writeF" method="POST" action="reservationStep3">
							<input type="hidden" name="fromdate" value="${ reservation.rmbkChkIn }">
							<input type="hidden" name="todate" value="${ reservation.rmbkChkOut }"> 
							<input type="hidden" name="roomCount" value="${reservation.roomCount}"> 
							<input type="hidden" name="people" value="${reservation.rmbkPeople}">
							<input type="hidden" name="days" value="${reservation.roomDays}"> 
							<input type="hidden" name="roomGrade" value="${room.roomGrade}">
							
							
							<div class="hs_reservation_left" style="padding: 0 20px 0 50px;">
							<h3 class="hs_reservation_title">고객 정보</h3>
								<ul class="hs_reservation_room_select">
								<li>
									성명&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userName" id="userName" class="input_text" style="width: 123px;" req fname="성명/단체명" maxlength="20" />
									<span id="rspan1" style="font-size: 12px; color: red;"></span>
								</li>
								<li>
								연락처
									<select name="userPh1" id="userPh1" class="select"
												style="width: 48px; height:25px;" req fname="휴대폰 번호">
													<option value='010'>010</option>
													<option value='011'>011</option>
													<option value='016'>016</option>
													<option value='017'>017</option>
													<option value='018'>018</option>
													<option value='019'>019</option>
											</select>&nbsp;- <input type="text" name="userPh2" id="userPh2"
												class="input_text numOnly" style="width: 48px;" req num
												fname="휴대폰 번호" maxlength="4" />&nbsp;- 
												<input type="text" name="userPh3" id="userPh3" class="input_text numOnly" style="width: 48px;" req num fname="휴대폰 번호" maxlength="4" />
												<span id="rspan2" style="font-size: 12px; color: red;"></span>
								</li>
								<li></li>
									
								</ul>
								<hr/>
								<h3 class="hs_reservation_title">객실 전망</h3>
								<ul class="hs_reservation_room_select">
										<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomView" id="roomView" value="cityView"checked>&nbsp;
										</span> <span class="hs_image disabled"> </span>
									 <span class="hs_room_title">도심 뷰 <span style="padding-top: 3px;"><b class="point"style="font-size: 16px;"></b> <!-- 전화문의 바랍니다. --></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomView" id="roomView" value="oceanView">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 오션 뷰  <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+  30000KRW</b> </span>
										</span> 
									</label></li>
								
									
								</ul>
							</div>

							<!--침대 옵션 선택-->
							<div class="hs_reservation_left">
								<h3 class="hs_reservation_title">침대 유형</h3>
								<ul class="hs_reservation_room_select">
									
										<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="double" checked>&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 더블 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 16px;"></b></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="tween">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 트윈 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+ 20000 KRW</b></span>
										</span> 
									</label></li>
									<li><label><span class="hs_checkbox"> 
												<input type="radio" name="roomBed" id="roomBed" value="family">&nbsp;
										</span> <span class="hs_image disabled"> </span> <span
											class="hs_room_title"> 패밀리 <span
												style="padding-top: 3px;"><b class="point"
													style="font-size: 12px;">+ 40500 KRW</b></span>
										</span> 
									</label></li>
									
								</ul>
							</div>
							<!--//객실선택-->

							<!--옵션-->
							<div class="hs_reservation_right">
								<h3 class="hs_reservation_title">옵션</h3>
								<ul class="hs_reservation_litt" id="optionList">
									<li><input type = "checkbox" name = "dndMode" value = "on">DoNotDisturb</li>
									<li><input type = "checkbox" name = "noFeader" value = "on">깃털 알레르기</li>
									<li><input type = "checkbox" name = "uncomfort" value = "on">장애인 편의 객실</li>
								</ul>
								<div class="hs_reservation_total"></div>
								
								특별 요청 사항<br/><br/>
								<textarea name="rmbkContent" style="width:350px; height:100px;"></textarea>
							</div>
							<!--//옵션-->
					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set" id="btnNext">
							<a href="javascript:submit1();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계</a>
						</div>
					</div>
					
					</form>
				</div>
			</div>
		</div>
		<div class='line_height50'></div>
	</div>
	</div>
	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>