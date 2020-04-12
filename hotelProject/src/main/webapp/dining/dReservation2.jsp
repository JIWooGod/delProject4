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
	
	function submit(){
		writeF2.submit();
	}
	
	function kakaopay(){
		$("#writeF").submit();
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
				<div class='title'>DINING RESERVATION</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 레스토랑 정보 시작 -->
				<div class='tl' align="center">
					<c:if test="${ res.rstNo eq 1 or res.rstNo eq 2 }">
						<c:forEach items="${ menus }" var="menu" end="0">
								-${ menu.rstName }- <br /> 메뉴를 선택하세요.
						</c:forEach>
					</c:if>
					<c:if test="${ res.rstNo eq 3 }">
						<c:forEach items="${ menus }" var="menu" end="0">
								-${ menu.rstName }- 
						</c:forEach>
						 -더 델루나-<br /><br />예약내역
					</c:if>
				</div>



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
						<form action="dReservationStep3?rno=${ res.rstNo }" method="POST" name="writeF2" id="writeF2">
						<table style="padding: 30px;">
						<c:if test="${ res.rstNo eq 1 or res.rstNo eq 2 }">
							<c:if test="${ !empty menus }">
								<c:forEach items="${ menus }" var="menu" varStatus="status">
									<tr>
										<td rowspan="2"><c:forTokens items="${ menu.menuImg }"
												delims="-" var="menuImg" varStatus="ii">
												<c:if test="${ ii.index == 0}">
													<img src="dining/update/${ menuImg }"
														style="width: 200px; height: 200px; margin: 10px">
												</c:if>
											</c:forTokens></td>
										<td style="padding-top: 2px;"><b style="font-size: 15px;">${ menu.menuName }
												&nbsp;&nbsp;...................&nbsp;&nbsp; ${ menu.menuPrice } \
												&nbsp;<input type="radio" value="${ menu.menuNo }" id="menuNo" name="menuNo" checked="checked">
												</b></td>
									</tr>
									<tr>
										<td style="padding-bottom: 2px;">${ menu.menuCnt }</td>
									</tr>
								</c:forEach>
							</c:if>
							<c:if test="${ empty menus }">
								<div align="center" style="padding: 200px;">메뉴를 준비중입니다.</div>
							</c:if>
							</c:if>
						</table>
						
						<!-- 기본정보입력에서 가져온정보 -->
						<input type="hidden" id="rstNo" name="rstNo" value="${ res.rstNo }">
						<input type="hidden" id="fromdate" name="fromdate" value="${ res.fromdate }">
						<input type="hidden" id="resTime" name="resTime" value="${ res.resTime }">
						<input type="hidden" id="resMans" name="resMans" value="${ res.resMans }">
						<input type="hidden" id="resName" name="resName" value="${ res.resName }">
						<input type="hidden" id="resTel" name="resTel" value="${ res.resTel }">
						<input type="hidden" id="emailVal1" name="emailVal1" value="${ res.emailVal1 }">
						<input type="hidden" id="emailVal2" name="emailVal2" value="${ res.emailVal2 }">
						<input type="hidden" id="resCnt" name="resCnt" value="${ res.resCnt }">
						<input type="hidden" id="menuName" name="menuName" value="${ res.resMans }인 이용권">
						<input type="hidden" id="menuPrice" name="menuPrice" value="${ res.resMans * 119000 }">
						<input type="hidden" id="rstTbl" name="rstTbl" value="${ res3.rstTbl }">
						<!-- 기본정보 끝 -->
						
						<c:if test="${ !empty menus }">
							<c:if test="${ res.rstNo eq 1 or res.rstNo eq 2 }">
								<a href="javascript:submit();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계</a>
							</c:if>
						</c:if>
						
						
						
						<c:if test="${ empty menus }">
							<c:if test="${ res.rstNo eq 1 or res.rstNo eq 2 }">
								<a href="main" class="hs_reservation_btn_poin" style="color: #FFFFFF;">메인으로</a>
							</c:if>
						</c:if>
						</form>
						
						<form action="kakaoPayRes" method="post" name="writeF" id="writeF">
						<c:if test="${ res.rstNo eq 3 }">
							<div align="center">예약정보</div>
							<table>
								<tr>
									<td>예약날짜</td><td>${ res.fromdate }</td>
								</tr>
								<tr>
									<td>예약시간</td><td>${ res.resTime }</td>
								</tr>
								<tr>
									<td>인원 수</td><td>${ res.resMans }</td>
								</tr>
								<tr>
									<td>예약자 이름</td><td>${ res.resName }</td>
								</tr>
								<tr>
									<td>전화번호</td><td>${ res.resTel }</td>
								</tr>
								<tr>
									<td>요청사항</td><td>${ res.resCnt }</td>
								</tr>
								<tr>
									<td>결제상품</td><td>델루나 뷔페 ${ res.resMans }인 이용</td>
								</tr>
								<tr>
									<td>결제금액</td><td> ${ res.resMans * 119000 } \</td>
								</tr>
							</table>
							<br /><br /><br />
							<input type="hidden" id="rstNo" name="rstNo" value="${ res.rstNo }">
							<input type="hidden" id="fromdate" name="fromdate" value="${ res.fromdate }">
							<input type="hidden" id="resTime" name="resTime" value="${ res.resTime }">
							<input type="hidden" id="resMans" name="resMans" value="${ res.resMans }">
							<input type="hidden" id="resName" name="resName" value="${ res.resName }">
							<input type="hidden" id="resTel" name="resTel" value="${ res.resTel }">
							<input type="hidden" id="emailVal1" name="emailVal1" value="${ res.emailVal1 }">
							<input type="hidden" id="emailVal2" name="emailVal2" value="${ res.emailVal2 }">
							<input type="hidden" id="resCnt" name="resCnt" value="${ res.resCnt }">
							<input type="hidden" id="menuName" name="menuName" value="${ res.resMans }인 이용권">
							<input type="hidden" id="menuPrice" name="menuPrice" value="${ res.resMans * 119000 }">
							<input type="hidden" id="rstTbl" name="rstTbl" value="${ res3.rstTbl }">
						</c:if>
						
						<c:if test="${ res.rstNo eq 3 }">
							<a href="javascript:kakaopay();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">결제</a>
						</c:if>
						</form>
						
					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set">
							
						</div>
					</div>
				</div>

			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>