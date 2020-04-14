<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/hotelProject/member/memberCss/memberCss.css">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js" ></script>
<script type="text/javascript">
$(function(){
	$("#btnY").click(function(){
		$(opener.document).find("#confirmNumY").val($("#numY").val());
		window.close();
	});	
});
</script>
</head>
<body>
<form action="idChkPopYes" method="POST" name="formY">
	<input type="hidden" name = "numY" value="1" id="numY" />
	<div align="center" >
	<br /><br />
	<p style="color: #ae8763;">사용가능한 ID 입니다</p><br />
	<button id="btnY">사용하기</button>
</div>
</form>
</body>
</html>