<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
가입 가능
<form action="idChkPopYes" method="POST" name="formY">
	<input type="hidden" name = "numY" value="1" id="numY" />
	<button id="btnY">사용하기</button>
</form>
</body>
</html>