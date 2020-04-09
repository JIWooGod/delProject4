<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/hotelProject/dining/diningcss/style.css">
<link rel="stylesheet" href="/hotelProject/css/rolling.css"
	media="screen">
<link rel="stylesheet" href="/hotelProject/css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(document).ready(function() {
			$('select[name=resSel]').change(function() {
				if ($(this).val() == "0") {
					$('#rstNo').val("");
				} else {
					$('#rstNo').val($(this).val());
					$("#rstNo").attr("readonly", true);
				}
			});
		});
	});

	$(function() {
		$(document).ready(function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#image_section').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
			$("#imgInput").change(function() {
				readURL(this);
			});
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
		<div class='box'>
		<!-- 상단메뉴 지우고 밑에 궁궐 황룡 델루나 메뉴리스트 뽑기 세로로 3줄 -->
		
		</div>

		<div class='tl'>
			<div class='line'></div>
			<div class='title'>
				메뉴관리
			</div>
			<div class='line'></div>
		</div>
	</div>

		<div class='content_box'>
			<div class='sub_detail2'>
				관리자 전용 레스토랑 메뉴 관리페이지 입니다.<br>
				<p style="font-size: 11px;">메뉴이름을 클릭하면 수정,삭제를 할 수 있습니다.<br />
				새로운 메뉴를 등록하시려면 밑에 메뉴등록 버튼을 클릭하세요.</p>
			</div>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
				<div class='line_box'></div>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1" align="center">
						<div class="hs_reservation_left2"></div>
						<div class="hs_reservation_right2">
						<strong style="font-size: 20px;">궁궐</strong><br /><br />
							<ul class="hs_reservation_litt2">
								<c:if test="${ !empty gwoong }">
									<c:forEach items="${ gwoong }" var="g">
										<li>
											<span style="width: 60px;">
												<a href="menuDetail?mno=${ g.menuNo }&rno=${ g.rstNo }" style="color: #8f8f8f;">
													${ g.menuName }
												</a>
											</span>
										</li>
									</c:forEach>
									<a href="menuInsert?rno=1" style="font-size: 30px;">+</a>
								</c:if>
								<c:if test="${ empty gwoong }">
									비어있습니다.<br />
									<a href="menuInsert?rno=1" style="font-size: 30px;">+</a>
								</c:if>
							</ul>
							<div>
							</div>
						</div>
						<div class="hs_reservation_right2">
						<strong style="font-size: 20px;">황룡</strong><br /><br />
							<ul class="hs_reservation_litt2">
								<c:if test="${ !empty dragon }">
									<c:forEach items="${ dragon }" var="d">
										<li>
											<span style="width: 60px;">
												<a href="menuDetail?mno=${ d.menuNo }&rno=${ d.rstNo }" style="color: #8f8f8f;">
													${ d.menuName }
												</a>
											</span>
										</li>
									</c:forEach>
									<a href="menuInsert?rno=2" style="font-size: 30px;">+</a>
								</c:if>
								<c:if test="${ empty dragon }">
									비어있습니다.<br />
									<a href="menuInsert?rno=2" style="font-size: 30px;">+</a>
								</c:if>
							</ul>
							<div>
							</div>
						</div>
						<div class="hs_reservation_right2">
						<strong style="font-size: 20px;">더 델루나</strong><br /><br />
							<ul class="hs_reservation_litt2">
								<c:if test="${ !empty deluna }">
									<c:forEach items="${ deluna }" var="del">
										<li>
											<span style="width: 60px;">
												<a href="menuDetail?mno=${ del.menuNo }&rno=${ del.rstNo }" style="color: #8f8f8f;">
													${ del.menuName }
												</a>
											</span>
										</li>
									</c:forEach>
									<a href="menuInsert?rno=3" style="font-size: 30px;">+</a>
								</c:if>
								<c:if test="${ empty deluna }">
									비어있습니다.<br />
									<a href="menuInsert?rno=3" style="font-size: 30px;">+</a>
								</c:if>
							</ul>
							<div>
							</div>
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