<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function aa(){
	if($("#sno").val() == "선택하세요"){
		alert("삭제하실 좌석(룸)을 선택하세요.");
		return false;
	}
	location.href="d1tblDeleteAction?sno=" + $("#sno").val() + "&rno=" + $("#rno").val();
}
</script>
</head>
<body>
<c:forEach items="${ seats }" var="seat" end="0">
	<input id="rno" type="hidden" value="${ seat.rstNo }">
</c:forEach>
<select id="sno">
<option>선택하세요</option>
	<c:forEach items="${ seats }" var="seat">
		<option value="${ seat.rstTbl }">${ seat.rstTbl }번 룸</option>
	</c:forEach>
</select>
<button onclick="aa()">삭제</button>
</body>
</html>