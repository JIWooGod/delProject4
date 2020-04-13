<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/hotelProject/css/style.css">
<link rel="stylesheet" href="/hotelProject/css/rolling.css" media="screen">
<link rel="stylesheet" href="/hotelProject/css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	$(document).ready(function(){
		$('select[name=seatSel]').change(function() {
			if($(this).val()=="0"){
				$('#rstSeat').val("");
				$("#rstSeat").attr("readonly", false);
			} else {
				$('#rstSeat').val($(this).val());
				$("#rstSeat").attr("readonly", true);
			}
		});
	});
});

function dMoreBtn(){
	$.ajax({
		type : "POST",
		url : "dining1_detail",
		datatype : "html",
		success : function(data1){
			$("#div1").html(data1);
		}
	});
}

function tblInsert(){
	if($("#rstSeat").val() == ""){
		alert("좌석(룸) 종류를 선택하세요.");
		return false;
	}
	if($("#rstNo").val() != "" && $("#rstSeat").val() != "" ){
		tblFrm.submit();	
	}
}

function clearText(y){
	if(y.defaultValue == y.value){
		y.value="";	
	}
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
			<div class='title' style="color: gray;">테이블 등록</div>
			<div class='line'></div>
		</div>
	</div>

	<div class='content_box'>
	<div class='sub_detail'>
</div>
<div class='line_height30'></div>
<div class='sub_reservation'>
	<div class='line_height50'></div>
	<div class='line_box'></div>
	<div class='line_height30'></div>
    <script language="javascript">
    <!--
    function goNext(){
        var frm = document.writeF;
        frm.submit();
    }
    //-->
</script>
<div class="hs_reservation">
  <div class="hs_reservation_section hs_reservation_box1">

    <div class="hs_reservation_left">
    
      	<h3 class="hs_reservation_title">${ rst.rstName } 좌석등록</h3>
      	
      	<h3 class="hs_reservation_title">좌석종류
      	<select id="seatSel" name="seatSel">
      		<option value="0">선택하세요</option>
      		<option value=1>4인 이하</option>
      		<option value=2>5인 이상</option>
      	</select>
      	<div id="div2"></div>
      	</h3>
      	
    </div>
    <form action="tblInsertAction?rno=${ rst.rstNo }" method="POST" id="tblFrm" name="tblFrm">
      <div class="hs_reservation_right">
        <ul class="hs_reservation_litt">
          <li>
            <strong style="width: 600px;">레스토랑 번호</strong>
            <input type="text" id="rstNo" name="rstNo" value="${ rst.rstNo }" readonly>
          </li>
          <li>
            <strong style="width: 600px;">좌석 종류</strong>
            <input type="text" id="rstSeat" name="rstSeat" readonly>
          </li>
        </ul>
          <div class="hs_reservation_section hs_reservation_bottom">
    <div class="hs_reservation_btn_set">
    <a href="javascript:window.history.back();" class="hs_reservation_btn_poin" style="color:#FFFFFF;">뒤로가기</a>
      <a href="javascript:tblInsert();" class="hs_reservation_btn_poin" style="color:#FFFFFF;">등록</a>
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