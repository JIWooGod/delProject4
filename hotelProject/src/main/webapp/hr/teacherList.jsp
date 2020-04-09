<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>강사목록</h2>
<table class="tableList">
	<tr>
		<th>강사번호</th>
		<th>강사명</th>
		<th>연락처</th>
		<th>이메일</th>
		<th>채용상태</th>
		<th>입사일</th>
	</tr>
	<c:forEach items="${tch }" var="tch">
	<tr>
		<td><a href="teacher/detail/${tch.teachNo }">${tch.teachNo}</a></td>
		<td><a href="teacher/detail/${tch.teachNo }">${tch.teachName }</a></td>
		<td>${tch.teachTel }</td>
		<td>${tch.teachEmail }</td>
		<td id="pass">${tch.passState } 
		<c:choose>
			<c:when test='${empty tch.passState == "서류합격자" }'>
				<button id="interviewBtn" onclick="location.href='#'">면접표</button>
			</c:when>
			<c:when test='${tch.passState == "면접합격자" }'>
				<button id="contractBtn">계약서</button>
			</c:when>
		</c:choose>
		</td>
		<td>${tch.teachDate }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>