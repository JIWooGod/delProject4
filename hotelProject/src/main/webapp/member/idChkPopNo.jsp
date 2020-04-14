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
	$("#btnN").click(function(){
		$(opener.document).find("#userId").val($("#numN").val());
		window.close();
	});	
});
</script>
</head>
<body>
<div align="center" >
	<input type="hidden" name = "numN" value="" id="numN" />
	<br /><br />
	<p style="color: #ae8763;">중복된 ID 입니다</p><br />
	<button type="button" id="btnN">닫기</button>
</div>
</body>
</html>