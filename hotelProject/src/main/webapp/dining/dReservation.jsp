<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select[name=emailSel]').change(function() {
			if($(this).val()=="0"){
				$('#emailVal2').val("");
				$("#emailVal2").attr("readonly", false);
			} else {
				$('#emailVal2').val($(this).val());
				$("#emailVal2").attr("readonly", true);
			}
		});
	});

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
				<div class='title'>DINING RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 레스토랑 정보 시작 -->
					<div class='tl' align="center">${ rst.rstName }</div>



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">
					<div class="hs_reservation_left">
					<table>
						<tr align="center">
							<td></td>
					
						</tr>
					</table>
					</div>
						<div class="hs_reservation_left">
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
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1">

						<div class="hs_reservation_left">
							<div id="from">
								<h3 class="hs_reservation_title">예약날짜</h3>
							</div>
						</div>
						<form name="writeF" method="POST" action="dReservationStep2?rno=${ rst.rstNo }">
							<div class="hs_reservation_right">
								<ul class="hs_reservation_litt">
									<li><strong>날짜</strong> <input type="text" id="fromdate"
										name="fromdate" class="hs_input hs_disabled" readonly>
										<!-- 예약 시작일 --></li>
									<li><strong>예약 시간</strong>
										<select id="resTime" name="resTime">
						<option value="0">시간을 선택하세요</option>
						<option value="오후  12:00">12:00</option>
						<option value="오후  12:30">12:30</option>
						<option value="오후  13:00">13:00</option>
						<option value="오후  13:30">13:30</option>
						<option value="오후  14:30">14:30</option>
						<option value="오후  15:00">15:00</option>
						<option value="오후  15:30">15:30</option>
						<option value="오후  16:00">16:00</option>
						<option value="오후  16:30">16:30</option>
						<option value="오후  17:00">17:00</option>
						<option value="오후  17:30">17:30</option>
						<option value="오후  18:00">18:00</option>
						<option value="오후  18:30">18:30</option>
						<option value="오후  19:00">19:00</option>
						<option value="오후  19:30">19:30</option>
						<option value="오후  20:00">20:00</option>
						<option value="오후  20:30">20:30</option>
						<option value="오후  21:00">21:00</option>
					</select>
									</li>
									<li><strong>인원 수</strong>
										<select name="resMans" id="resMans">
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
					</select>
									</li>
									<li><strong>이름</strong>
										<input type="text" size="10" name="resName" id="resName"/>
									</li>
									<li><strong>전화번호</strong>
										<input type="text" size="10" name="resTel" id="resTel"/>
									</li>
									<li><strong>이메일</strong>
										<input type="text" size="10" name="emailVal1" id="emailVal1" />
										@
										<input type="text" size="10" name="emailVal2" id="emailVal2" />
					<select id="emailSel" name="emailSel">
						<option value="0">직접입력</option>
						<option value="naver.com">naver.com</option>
						<option value="hanmail.net">hanmail.net</option>
						<option value="gmail.com">gmail.com</option>
						<option value="nate.com">nate.com</option>
						<option value="yahoo.co.kr">yahoo.co.kr</option>
					</select>
									</li>
									<li><strong>요청사항</strong>
										<textarea style="resize: none;" cols="40" rows="5" name="resCnt" id="resCnt"></textarea>
									</li>
								</ul>
							</div>
						</form>

					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set">
							<a href="javascript:writeF.submit();" class="hs_reservation_btn_poin"
								style="color: #FFFFFF;">다음단계</a>
						</div>
					</div>
				</div>
				<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"
					type="text/javascript"></script>
				<script>
					$(function() {
						var tmr = new Date();
						tmr.setDate(tmr.getDate());
						//tmr.setDate(tmr.getDate()+1);	//오늘은 예약이 안되므로 내일 날자 세팅
						var tmr2 = new Date();
						tmr2.setDate(tmr.getDate());
						//tmr2.setDate(tmr.getDate()+1);	//오늘은 예약이 안되므로 내일 날자 세팅
						$("#from").datepicker(
								{
									changeMonth : false,
									showMonthAfterYear : true,
									yearSuffix : ' .',
									numberOfMonths : 1,
									defaultDate : 0,
									minDate : "+0",
									maxDate : "+2y",
									altField : "#fromdate",
									altFormat : "yy-mm-dd",
									changeYear : false,
									monthNames : [ '1', '2', '3', '4', '5',
											'6', '7', '8', '9', '10', '11',
											'12' ],
									onSelect : function(selectedDate) {
										var nextday = new Date(selectedDate);
										nextday.setDate(nextday.getDate() + 1);
										$("#to").datepicker("option",
												"minDate", nextday);
										$("#to").datepicker("option",
												"defaultDate", +1);
									}
								});

						$("#to").datepicker(
								{
									changeMonth : false,
									numberOfMonths : 1,
									showMonthAfterYear : true,
									yearSuffix : ' .',
									defaultDate : +1,
									altField : "#todate",
									altFormat : "yy-mm-dd",
									monthNames : [ '1', '2', '3', '4', '5',
											'6', '7', '8', '9', '10', '11',
											'12' ],
									changeYear : false,
									minDate : "+1d",
									maxDate : "+2y +1m",
									onSelect : function(selectedDate) {
										if (getDateDiff($("#todate").val(), $(
												"#fromdate").val()) > 30) {
											alert('장기투숙은 고객센터로 문의바랍니다.');
										}
										$("#wr_3").val(
												getDateDiff($("#todate").val(),
														$("#fromdate").val()));
										$("#wr_1").val($("#fromdate").val());
										$("#wr_2").val($("#todate").val());
									}
								});
						$("#wr_3").val(
								getDateDiff($("#todate").val(), $("#fromdate")
										.val()));
					});
					// 날짜 차이 계산 함수
					// date1 : 기준 날짜(YYYY-MM-DD), date2 : 대상 날짜(YYYY-MM-DD)
					function getDateDiff(date1, date2) {
						var arrDate1 = date1.split("-");
						var getDate1 = new Date(parseInt(arrDate1[0]),
								arrDate1[1] - 1, arrDate1[2]);
						var arrDate2 = date2.split("-");
						var getDate2 = new Date(parseInt(arrDate2[0]),
								arrDate2[1] - 1, arrDate2[2]);

						var getDiffTime = getDate1.getTime()
								- getDate2.getTime();

						return Math.floor(getDiffTime / (1000 * 60 * 60 * 24));
					}
					function reset() {
						var nextday = new Date();
						//alert(nextday);
						//$("#from").datepicker( "option", "defaultDate", nextday);
					}

					function step_changer(now, change, mode) { //예약 스텝 변경
						if (mode == "next") {
							if (change == 2) { //step 1에서 2로 넘어갈때
								$("#wr_1").val($("#fromdate").val()); //체크인
								$("#wr_2").val($("#todate").val()); //체크아웃
								var stayday = getDateDiff($("#todate").val(),
										$("#fromdate").val());
								$("input[name='wr_3']").text(
										stayday + "박 " + stayday + "일"); //고객정보입력-투숙기간
								$("#stayday").text(stayday); //고객정보입력-투숙기간
								$("#roomcnt").text(
										$("select[name=wr_9]").val() + "실"); //객실수
								$("#person").text(
										$("select[name=wr_4]").val() + "인"); //투숙인원
								$("#stepbar").children().attr("src",
										"/img/sub06/reserve02.gif");

								$("#step" + now).slideUp(500);
								$("#step" + change).slideDown(500); //화면전환
							} else if (change == 3) { //step 2에서 3로 넘어갈때
								$("#roomcnt_st4").val(
										$("select[name=wr_9]").val()); //객실수
								$("#person_st4").text(
										$("select[name=wr_4]").val()); //투숙인원
								$("#roomname").val(
										$("#wr_8:checked").attr("roomname")); //객실타입
								$("#pkgname").val(
										$("#wr_10:checked").attr("pkgname")); //패키지명
								$("#stepbar").children().attr("src",
										"/img/sub06/reserve03.gif");

								if ($("#wr_8:checked").val() > 0) {
									$("#step" + now).slideUp(500);
									$("#step" + change).slideDown(500); //화면전환
								} else {
									alert("객실을 선택하세요.");
								}
							}

						} else if (mode == "prev") {
							$("#step" + now).slideDown(500);
							$("#step" + change).slideUp(500);
						}
					}
				</script>
			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>