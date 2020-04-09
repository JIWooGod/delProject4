<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./dining/diningcss/dining.css">
<link rel="stylesheet" href="js/rolling.css" media="screen">
<link rel="stylesheet" href="css/slide.css" media="screen">
<style>
/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #2e2f32;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 30%; /* Could be more or less, depending on screen size */
}
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	//메뉴판 보기 팝업
	//function popup() {
		/*
		var url = "";
		var name = "메뉴판";
		var option = "width = 500, height = 600, top = 100, left = 200, location = no";
		window.open(url, name, option);
		 */
/*
		var url = "menuList?no=" + $("#menuBtn").val();
		var windowW = 700; // 창의 가로 길이
		var windowH = 800; // 창의 세로 길이
		var left = Math.ceil((window.screen.width - windowW) / 2);
		var top = Math.ceil((window.screen.height - windowH) / 2);
		window.open(url, "pop_01", "l top=" + top + ", left=" + left
				+ ", height=" + windowH + ", width=" + windowW);
	}
*/
	function diningReservation() {
		location.href = "d1reservation";
	}
	
	function modal() {

		$('#myModal').show();

		$.ajax({
			type : "POST",
			url : "diningMenuList?rno=" + $("#aa").val(),
			datatype : "html",
			success : function(data1) {
				$("#modal1").html(data1);
			}
		});

	}
	//팝업 Close 기능
	function close_pop(flag) {
		$('#myModal').hide();
	};
</script>
</head>
<body>

	<div align="center">
		<img alt="" src="dining/img/${ rst.rstImg }.png">
	</div>


	<!--  -->
	<div id='content_wrapper'>

		<div class='content_box'>
			<div class='sub_roominfo'>
				<div class='box'>
					<div class='time'>
						<span>Open</span> 09:00 ~ <span>Close</span> 22:00
					</div>
					<div class='basic'>
						<span>총 좌석 수</span> ${ rst.tblCount } 석<br> <span>좌석
							타입</span> 2~8석 완비<br> <span>레스토랑 위치</span>${ rst.rstAddr }<br>
					</div>
					<div class='tel'>
						<span>예약 및 이용문의</span><br> 예약상담시간 : 09:00 ~ 19:00<br>
						전화번호 : ${ rst.rstTel }<br> 이메일 : ${ rst.rstEmail }
					</div>
				</div>
				<div class='line_height40'></div>

				<div class='tl'>MENU</div>
				<div class='con'>
					<button onclick="modal()" value="${ rst.rstNo }" id="aa" class="resBtn" style="font-size: 12px; padding: 10px 20px;">메뉴판</button>


					<!-- The Modal -->
					<div id="myModal" class="modal">

						<!-- Modal content -->
						<div class="modal-content">
							<div id="modal1"></div>
							<div
								style="cursor: pointer; background-color: #ae8763; text-align: center; padding-bottom: 10px; padding-top: 10px;"
								onClick="close_pop();">
								<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
							</div>
						</div>

					</div>
					<!--End Modal-->

					

				</div>
				<div class='line_height30'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
				<div class='tl'>예약안내</div>
				<div class='con'>
					체크인 3일 전 취소: 100% 환불<br> 체크인 2일 전 취소: 1박 요금의 30% 수수료 부과<br>
					체크인 1일 전 취소: 1박 요금의 50% 수수료 부과<br> 체크인 당일 및 노쇼: 예약 건의 1박 요금
					100% 부과
				</div>
				<div class='line_height30'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
			</div>
			<div class='line_height30'></div>

			<a href='../room/reservation_1.jsp'> <!-- 예약하기버튼 다시만들거야  
<div class='sub_room_reservation'>
	예약하기
</div>
-->
			</a>
			<div class='line_height50'></div>
		</div>
	</div>
	<div align="center">
		<button class="resBtn" onclick="javascript:diningReservation()">예약하기</button>
	</div>
</body>
</html>