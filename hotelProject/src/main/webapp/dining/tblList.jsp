<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	function tblInsert() {
		location.href = "tblInsert";
	}

	function tbl1Delete() {
		$.ajax({
			type : "POST",
			url : "tblDelete?rno=1",
			datatype : "html",
			success : function(data1) {
				$("#div1").html(data1);
			}
		});
	}

	function tbl2Delete() {
		$.ajax({
			type : "POST",
			url : "tblDelete?rno=2",
			datatype : "html",
			success : function(data2) {
				$("#div2").html(data2);
			}
		});
	}

	function tbl3Delete() {
		$.ajax({
			type : "POST",
			url : "tblDelete?rno=3",
			datatype : "html",
			success : function(data3) {
				$("#div3").html(data3);
			}
		});
	}
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
				<div class='title'>좌석관리</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			<div class='sub_detail2'>
				관리자 전용 레스토랑 좌석 관리페이지 입니다.<br>
				<p style="font-size: 11px;">
					새로운 테이블을 추가하거나 수정,삭제 할 수 있습니다.<br /> 새로운 테이블을 등록하시려면 밑에 테이블 등록 버튼을
					클릭하세요.
				</p>
			</div>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
				<div class='line_box'></div>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1"
						align="center">
						<div class="hs_reservation_left2"></div>
						<div class="hs_reservation_right2">
							<strong style="font-size: 20px;">궁궐</strong><br /> <br />
							<ul class="hs_reservation_litt2">
								<table>
									<tr>
										<c:if test="${ !empty gwoong }">
											<c:forEach items="${ gwoong }" var="g" varStatus="status">
											<!-- 2인석 출력 -->
											<c:if test="${ g.rstSeat eq 2 }">
												<td><img alt='' src='dining/img/table-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ g.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
											
											<!-- 4인석 출력 -->
											<c:if test="${ g.rstSeat eq 4 }">
												<td><img alt='' src='dining/img/table4-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ g.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<a href="tblInsert?rno=1"
												style="font-size: 15px; color: red;">추가</a>&nbsp;&nbsp;&nbsp;
											<a href="javascript:tbl1Delete();"
												style="font-size: 15px; color: red;">삭제</a>
											<div id="div1"></div>
										</c:if>
										<c:if test="${ empty gwoong }">
											비어있습니다.<br />
											<a href="tblInsert?rno=1"
												style="font-size: 15px; color: red;">추가</a>
										</c:if>
									</tr>
								</table>
							</ul>
							<div></div>
						</div>
						<div class="hs_reservation_right2">
							<strong style="font-size: 20px;">황룡</strong><br /> <br />
							<ul class="hs_reservation_litt2">
								<table>
									<tr>
										<c:if test="${ !empty dragon }">
											<c:forEach items="${ dragon }" var="d" varStatus="status">
											<!-- 2인석 출력 -->
											<c:if test="${ d.rstSeat eq 2 }">
												<td><img alt='' src='dining/img/table-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ d.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
											
											<!-- 4인석 출력 -->
											<c:if test="${ d.rstSeat eq 4 }">
												<td><img alt='' src='dining/img/table4-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ d.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<a href="tblInsert?rno=2"
												style="font-size: 15px; color: red;">추가</a>&nbsp;&nbsp;&nbsp;
											<a href="javascript:tbl2Delete();"
												style="font-size: 15px; color: red;">삭제</a>
											<div id="div2"></div>
										</c:if>
										<c:if test="${ empty dragon }">
											비어있습니다.<br />
											<a href="tblInsert?rno=2"
												style="font-size: 15px; color: red;">추가</a>
										</c:if>
									</tr>
								</table>
							</ul>
							<div></div>
						</div>
						<div class="hs_reservation_right2">
							<strong style="font-size: 20px;">더 델루나</strong><br /> <br />
							<ul class="hs_reservation_litt2">
								<table>
									<tr>
										<c:if test="${ !empty deluna }">
											<c:forEach items="${ deluna }" var="del" varStatus="status">
											<!-- 2인석 출력 -->
											<c:if test="${ del.rstSeat eq 2 }">
												<td><img alt='' src='dining/img/table-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ del.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
											
											<!-- 4인석 출력 -->
											<c:if test="${ del.rstSeat eq 4 }">
												<td><img alt='' src='dining/img/table4-icon.png'
													style="width: 60px; height: 60px; margin: 5px"><br />
													<p align="center" style="font-size: 11px; color: #8f8f8f">
														<a href="#">${ del.rstTbl }번 좌석</a>
													</p>
												</td>
											</c:if>
												<c:if test="${ status.count%5 eq 0 }">
													<tr></tr>
												</c:if>
											</c:forEach>
											<a href="tblInsert?rno=3"
												style="font-size: 15px; color: red;">추가</a>&nbsp;&nbsp;&nbsp;
											<a href="javascript:tbl3Delete();"
												style="font-size: 15px; color: red;">삭제</a>
											<div id="div3"></div>
										</c:if>
										<c:if test="${ empty deluna }">
											비어있습니다.<br />
											<a href="tblInsert?rno=3"
												style="font-size: 15px; color: red;">추가</a>
										</c:if>
									</tr>
								</table>
							</ul>
							<div></div>
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










