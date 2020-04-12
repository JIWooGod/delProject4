<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${ empty resList }">
	예약목록이 없습니다.
</c:if>
	<c:if test="${ !empty resList }">
		<table border="1">
			<tr>
				<td>회원 아이디</td>
				<td>예약자 이름</td>
				<td>예약자 전화번호</td>
				<td>예약날짜</td>
				<td>예약시간</td>
				<td>예약 테이블(룸)번호</td>
				<td>예약 메뉴</td>
				<td>결제 금액</td>
			</tr>
			<c:forEach items="${ resList }" var="l">
			<tr>
				<td>${ l.memId }</td>
				<td>${ l.resName }</td>
				<td>${ l.resTel }</td>
				<td>${ l.fromdate }</td>
				<td>${ l.resTime }</td>
				<td>${ l.rstTbl }</td>
				<td>${ l.menuName }</td>
				<td>${ l.menuPrice }</td>
			</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>