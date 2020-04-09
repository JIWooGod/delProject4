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
	
	function priceSum(){
		
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
					<c:forEach items="${ menus }" var="menu" end="0">
							-${ menu.rstName }- <br /> 메뉴를 선택하세요.
						</c:forEach>
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
						<table style="padding: 30px;">
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
												&nbsp;<input type="checkbox" value="${ menu.menuNo }" onclick="priceSum()">
												</b></td>
									</tr>
									<tr>
										<td style="padding-bottom: 2px;">${ menu.menuCnt }</td>
									</tr>
								</c:forEach>
								<tr>
									<td style="float: right; font-size: 20px; color: red;">총 금액 : </td>
								</tr>
							</c:if>
							<c:if test="${ empty menus }">
								<div align="center" style="padding: 200px;">메뉴를 준비중입니다.</div>
							</c:if>
						</table>
						
					</div>
					<div class="hs_reservation_section hs_reservation_bottom">
						<div class="hs_reservation_btn_set">
							<a href="javascript:writeF.submit();"
								class="hs_reservation_btn_poin" style="color: #FFFFFF;">다음단계</a>
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