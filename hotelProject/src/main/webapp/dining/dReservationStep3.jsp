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
	
	function sb(){
		$("#sb").submit();
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
				<div class='tl' align="center">좌석을 선택하세요.</div>



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
						<form action="dReservationStep4?rno=${ res2.rstNo }" method="POST" name="sb" id="sb">
							<!-- 궁궐일때 출력 -->
							<c:if test="${ res2.rstNo eq 1 }">
								<table>
									<tr>
										<c:if test="${ !empty gwoong }">
											<c:forEach items="${ gwoong }" var="g" varStatus="status">
												<td><c:if test="${ g.rstSeat eq 1 }">
														<img alt='' src='dining/img/seat4.png'
															style="width: 60px; height: 60px; margin: 5px">
															<br/>
															<p align="center" style="font-size: 11px; color: #8f8f8f">
																<a href="#">${ g.rstTbl }번 룸(4인 이하)</a>
																<input type="radio" value="${ g.rstTbl }" id="rstTbl" name="rstTbl" checked="checked">
															</p>
													</c:if> <c:if test="${ g.rstSeat eq 2 }">
														<img alt='' src='dining/img/seat5.png'
															style="width: 60px; height: 60px; margin: 5px">
															<br/>
															<p align="center" style="font-size: 11px; color: #8f8f8f">
																<a href="#">${ g.rstTbl }번 룸(5인 이상)</a>
																<input type="radio" value="${ g.rstTbl }" id="rstTbl" name="rstTbl" checked="checked">
															</p>
													</c:if> <c:if test="${ g.rstSeat eq 6 }">
														<img alt='' src='dining/img/table6-icon.png'
															style="width: 60px; height: 60px; margin: 5px">
													</c:if> <br />
													</td>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<div id="div1"></div>
										</c:if>
										<c:if test="${ empty gwoong }">
											좌석 준비중입니다.
									</c:if>
									</tr>
								</table>
								<br />
								<c:if test="${ empty gwoong }">
								<div class="hs_reservation_btn_set">
									<a href="main" class="hs_reservation_btn_poin" style="color: #FFFFFF;">메인으로 </a>
								</div>
								</c:if>
								<c:if test="${ !empty gwoong }">
								<div class="hs_reservation_btn_set">
									<a href="javascript:sb();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계 </a>
								</div>
								</c:if>
							</c:if>
							<!-- 궁궐일때 출력 끝 -->
							
							<!-- 황룡일때 출력 -->
							<c:if test="${ res2.rstNo eq 2 }">
								<table>
									<tr>
										<c:if test="${ !empty dragon }">
											<c:forEach items="${ dragon }" var="g" varStatus="status">
												<td><c:if test="${ g.rstSeat eq 1 }">
														<img alt='' src='dining/img/seat4.png'
															style="width: 60px; height: 60px; margin: 5px">
															<br/>
															<p align="center" style="font-size: 11px; color: #8f8f8f">
																<a href="#">${ g.rstTbl }번 룸(4인 이하)</a>
																<input type="radio" value="${ g.rstTbl }" id="rstTbl" name="rstTbl" checked="checked">
															</p>
													</c:if> <c:if test="${ g.rstSeat eq 2 }">
														<img alt='' src='dining/img/seat5.png'
															style="width: 60px; height: 60px; margin: 5px">
															<br/>
															<p align="center" style="font-size: 11px; color: #8f8f8f">
																<a href="#">${ g.rstTbl }번 룸(5인 이상)</a>
																<input type="radio" value="${ g.rstTbl }" id="rstTbl" name="rstTbl" checked="checked">
															</p>
													</c:if> <c:if test="${ g.rstSeat eq 6 }">
														<img alt='' src='dining/img/table6-icon.png'
															style="width: 60px; height: 60px; margin: 5px">
													</c:if> <br />
													</td>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<div id="div1"></div>
										</c:if>
										<c:if test="${ empty dragon }">
											좌석 준비중입니다.
									</c:if>
									</tr>
								</table>
								<br />
								<c:if test="${ empty dragon }">
								<div class="hs_reservation_btn_set">
									<a href="main" class="hs_reservation_btn_poin" style="color: #FFFFFF;">메인으로 </a>
								</div>
								</c:if>
								<c:if test="${ !empty dragon }">
								<div class="hs_reservation_btn_set">
									<a href="javascript:sb();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계 </a>
								</div>
								</c:if>
							</c:if>
							<!-- 황룡일때 출력 끝 -->
							
							<!-- 더 델루나일때 출력 -->
							<c:if test="${ res2.rstNo eq 3 }">
								<table>
									<tr>
										<c:if test="${ !empty deluna }">
											<c:forEach items="${ deluna }" var="g" varStatus="status">
												<td><c:if test="${ g.rstSeat eq 1 }">
														<img alt='' src='dining/img/seat4.png'
															style="width: 60px; height: 60px; margin: 5px">
													</c:if> <c:if test="${ g.rstSeat eq 2 }">
														<img alt='' src='dining/img/seat5.png'
															style="width: 60px; height: 60px; margin: 5px">
													</c:if> <c:if test="${ g.rstSeat eq 6 }">
														<img alt='' src='dining/img/table6-icon.png'
															style="width: 60px; height: 60px; margin: 5px">
													</c:if> <br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ g.rstTbl }번 좌석</a>
														<input type="checkbox" value="${ g.rstTbl }" id="rstTbl" name="rstTbl">
													</p></td>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<div id="div1"></div>
										</c:if>
										<c:if test="${ empty deluna }">
											좌석 준비중입니다.
									</c:if>
									</tr>
								</table>
								<br />
								<c:if test="${ empty deluna }">
								<div class="hs_reservation_btn_set">
									<a href="main" class="hs_reservation_btn_poin" style="color: #FFFFFF;">메인으로 </a>
								</div>
								</c:if>
								<c:if test="${ !empty deluna }">
								<div class="hs_reservation_btn_set">
									<a href="javascript:sb();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계 </a>
								</div>
								</c:if>
							</c:if>
							<!-- 더 델루나일때 출력 끝 -->

							<!-- 기본정보입력에서 가져온정보 -->
							<input type="hidden" id="rstNo" name="rstNo"
								value="${ res2.rstNo }"> <input type="hidden"
								id="fromdate" name="fromdate" value="${ res2.fromdate }">
							<input type="hidden" id="resTime" name="resTime"
								value="${ res2.resTime }"> <input type="hidden"
								id="resMans" name="resMans" value="${ res2.resMans }"> <input
								type="hidden" id="resName" name="resName"
								value="${ res2.resName }"> <input type="hidden"
								id="resTel" name="resTel" value="${ res2.resTel }"> <input
								type="hidden" id="emailVal1" name="emailVal1"
								value="${ res2.emailVal1 }"> <input type="hidden"
								id="emailVal2" name="emailVal2" value="${ res2.emailVal2 }">
							<input type="hidden" id="resCnt" name="resCnt"
								value="${ res2.resCnt }"><input type="hidden"
								id="menuNo" name="menuNo" value="${ res2.menuNo }">
							<input type="hidden" id="menuName" name="menuName" value="${ resMenu.menuName }">
							<input type="hidden" id="menuPrice" name="menuPrice" value="${ resMenu.menuPrice }">
							<input type="hidden" id="menuImg" name="menuImg" value="${ resMenu.menuImg }">
							<!-- 기본정보 끝 -->
							
							<!-- 
							<div class="hs_reservation_btn_set">
								<a href="javascript:sb();" class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계 </a>
							</div>
							-->
						
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