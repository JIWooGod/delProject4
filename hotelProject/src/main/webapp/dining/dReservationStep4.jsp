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
	var i = 0;
	$(document).ready(function() {
		$('select[name=emailSel]').change(function() {
			if ($(this).val() == "0") {
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

	function kakaopay(){
		   $("#writeF").submit();
		}
</script>
<body>
	<input type="hidden" id="btnCk" />
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
				<div class='tl' align="center">결제</div>



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
					<div class="hs_reservation_section hs_reservation_box1"
						align="center">
						<form action="kakaoPayRes" method="post" name="writeF" id="writeF">

							<div>
								이름 : ${ res3.resName } <br />
								전화번호 : ${ res3.resTel } <br />
								이메일 : ${ res3.emailVal1 }@${ res3.emailVal2 } <br />
								예약날짜 : ${ res3.fromdate } <br />
								예약시간 : ${ res3.resTime } <br />
								예약인원 : ${ res3.resMans } <br />
								요청사항 : ${ res3.resCnt } <br />
								예약메뉴 : ${ res3.menuName } <br />
								예약좌석번호 : ${ res3.rstTbl } <br />
								결제 금액: ${ res3.menuPrice }
							</div>

							<!-- 기본정보입력에서 가져온정보 -->
							<input type="hidden" id="rstNo" name="rstNo" value="${ res3.rstNo }">
							<input type="hidden" id="fromdate" name="fromdate" value="${ res3.fromdate }">
							<input type="hidden" id="resTime" name="resTime" value="${ res3.resTime }">
							<input type="hidden" id="resMans" name="resMans" value="${ res3.resMans }">
							<input type="hidden" id="resName" name="resName" value="${ res3.resName }">
							<input type="hidden" id="resTel" name="resTel" value="${ res3.resTel }">
							<input type="hidden" id="emailVal1" name="emailVal1" value="${ res3.emailVal1 }">
							<input type="hidden" id="emailVal2" name="emailVal2" value="${ res3.emailVal2 }">
							<input type="hidden" id="resCnt" name="resCnt" value="${ res3.resCnt }">
							<input type="hidden" id="menuName" name="menuName" value="${ res3.menuName }">
							<input type="hidden" id="menuPrice" name="menuPrice" value="${ res3.menuPrice }">
							<input type="hidden" id="rstTbl" name="rstTbl" value="${ res3.rstTbl }">
							
							<!-- 기본정보 끝 -->
							
							<div class="hs_reservation_btn_set">
							<a href="javascript:kakaopay();" class="hs_reservation_btn_poin"
								style="color: #FFFFFF;">다음단계</a>
						</div>
						</form>
					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						
					</div>
				</div>

			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>