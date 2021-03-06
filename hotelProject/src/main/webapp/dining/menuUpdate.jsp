<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/hotelProject/css/style.css">
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

	function menuUpdateAction() {
		actionFrm.submit();
	}

	function menuDeleteAction() {
		actionFrm.submit();
	}
</script>
<body>

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>

			<div class='tl'>
				<div class='line'></div>
				<div class='title' style="color: gray;">메뉴 관리</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
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
						<form
							action="menuUpdateAction?mno=${ menus.menuNo }&rno=${ menus.rstNo }"
							method="POST" id="actionFrm" name="actionFrm"
							enctype="multipart/form-data">
							<div class="hs_reservation_left">

								<h3 class="hs_reservation_title">
									메뉴사진 <input type='file' id="imgInput" name="menuImg" />

								</h3>
								<c:forTokens items="${ menus.menuImg }" delims="-" var="menuImg"
									varStatus="ii">
									<c:if test="${ ii.index == 0}">
		현재 이미지<img src="dining/update/${ menuImg }"
											style="width: 200px; height: 200px; margin: 10px">
									</c:if>
								</c:forTokens>
								<br /> <br /> <br /> 수정할 이미지<img id="image_section" src="#"
									alt="" style="width: 200px; height: 200px; margin: 10px" />
							</div>

							<div class="hs_reservation_right">
								<ul class="hs_reservation_litt">
									<li><strong style="width: 600px;">레스토랑</strong> <input
										type="text" id="rstName" name="rstName" readonly
										value="${ menus.rstName }"></li>
									<li><strong style="width: 600px;">레스토랑 번호</strong> <input
										type="text" id="rstNo" name="rstNo" readonly
										value="${ menus.rstNo }"></li>
									<li><strong style="width: 600px;">메뉴 번호</strong> <input
										type="text" id="" name="menuNo" readonly
										value="${ menus.menuNo }"></li>
									<li><strong style="width: 600px;">메뉴이름</strong> <input
										type="text" id="" name="menuName" value="${ menus.menuName }">
									</li>
									<li><strong style="width: 600px;">메뉴가격</strong> <input
										type="text" id="" name="menuPrice"
										onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"
										value="${ menus.menuPrice }"></li>
									<li><strong style="width: 600px;">메뉴설명</strong> <textarea
											style="resize: none;" cols="40" rows="5" name="menuCnt">${ menus.menuCnt }</textarea>
									</li>
								</ul>
								<div class="hs_reservation_section hs_reservation_bottom">
									<div class="hs_reservation_btn_set">
										<a href="mgMenuList" class="hs_reservation_btn_poin"
											style="color: #FFFFFF;">목록으로</a> <a
											href="javascript:menuUpdateAction();"
											class="hs_reservation_btn_poin" style="color: #FFFFFF;">완료</a>
									</div>

								</div>

							</div>
						</form>
					</div>

				</div>
			</div>
			<div class='line_height50'></div>
		</div>
	</div>

</body>
</html>