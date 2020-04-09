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
<h2>등록강의목록</h2>
<table class="tableList">
	<tr>
		<th></th>
		<th>강의분류</th>
		<th>강의번호</th>
		<th>강좌명</th>
		<th>강사명</th>
		<th>이수단위</th>
		<th>조회수</th>
		<th></th>
	</tr>
	<c:forEach items="${list }" var="list">
	<tr>
		<td>
			Thumnail
		</td>
		<td>${list.subjGroup }</td>
		<td><a href="lecture/${list.subjNo}">${list.subjNo }</a></td>
		<td><a href="lecture/${list.subjNo}">${list.subjName }</a></td>
		<td></td>
		<td>${list.subjTime }</td>
		<td></td>
		<td></td>
		<td><button onclick="location.href='lecture/teacher/deleting?num=${list.subjNo}'">삭제</button></td>
	</tr>
	</c:forEach>
</table>
<button onclick="javascript:location.href='lecture/upload'">강의등록</button>
</body>
</html>