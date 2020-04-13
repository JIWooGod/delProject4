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

	function menuInsert() {
		var i = 0;
		if($("#imgInput").val() == ""){
			alert("사진을 등록해주세요.");
			return false;
		}
		if($("#menuNo").val() == "") {
			document.getElementById("span2").innerHTML = "필수 항목 입니다.";
			i += 1;
		}
		if($("#menuName").val() == "") {
			document.getElementById("span3").innerHTML = "필수 항목 입니다.";
			i += 1;
		}
		if($("#menuPrice").val() == "") {
			document.getElementById("span4").innerHTML = "필수 항목 입니다.";
			i += 1;
		}
		if($("#menuCnt").val() == "") {
			document.getElementById("span5").innerHTML = "필수 항목 입니다.";
			i += 1;
		}
		if(i <= 0){
			menuFrm.submit();
		}else{
			return false;
		}
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
				<div class='title' style="color: gray;">메뉴 등록</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>
			<div class='sub_detail'>
			</div>
			<div class='line_height30'></div>
			<div class='sub_reservation'>
				<div class='tl'></div>
				<div class='con'>
				</div>
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
						<form action="menuInsertAction?rno=${ rst.rstNo }" method="POST" id="menuFrm"
							name="menuFrm" enctype="multipart/form-data">
							<div class="hs_reservation_left">

								<h3 class="hs_reservation_title">
									레스토랑 - ${ rst.rstName }
								</h3>

								<h3 class="hs_reservation_title">
									메뉴사진 <input type='file' id="imgInput" name="menuImg" value="${ noPic.menuImg }" />
									<div id="div2">
										<img id="image_section" src="#" alt=""
											style="width: 500px; height: 500px" />
									</div>
								</h3>
							</div>
							<div class="hs_reservation_right">
								<ul class="hs_reservation_litt">
									<li><strong style="width: 600px;">레스토랑 번호</strong> <input
										type="text" id="rstNo" name="rstNo" value="${ rst.rstNo }" readonly>
									</li>
									<li><strong style="width: 600px;">메뉴이름</strong> <input
										type="text" id="menuName" name="menuName"><span id="span3" style="font-size: 12px; color: red;"></span></li>
									<li><strong style="width: 600px;">메뉴가격</strong> <input
										type="text" id="menuPrice" name="menuPrice"
										onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"><span id="span4" style="font-size: 12px; color: red;"></span>
									</li>
									<li><strong style="width: 600px;">메뉴설명</strong> <textarea
											style="resize: none;" cols="40" rows="5" id="menuCnt" name="menuCnt"></textarea><span id="span5" style="font-size: 12px; color: red;"></span>
									</li>
								</ul>
								<div class="hs_reservation_section hs_reservation_bottom">
									<div class="hs_reservation_btn_set">
										<a href="javascript:window.history.back();"
											class="hs_reservation_btn_poin" style="color: #FFFFFF;">뒤로가기</a>
										<a href="javascript:menuInsert();"
											class="hs_reservation_btn_poin" style="color: #FFFFFF;">등록</a>
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