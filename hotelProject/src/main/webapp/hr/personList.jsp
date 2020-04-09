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
<h2>사원목록</h2>
<table class="tableList">
	<tr>
		<th>사원번호</th>
		<th>사원명</th>
		<th>연락처</th>
		<th>이메일</th>
		<th>소속부서</th>
		<th>채용상태</th>
		<th>입사일</th>
	</tr>
	<c:forEach items="${emp }" var="emp">
	<tr>
		<td><a href="./personnel/detail/${emp.empNo }">${emp.empNo}</a></td>
		<td><a href="./personnel/detail/${emp.empNo }">${emp.empName }</a></td>
		<td>${emp.empTel }</td>
		<td>${emp.empEmail }</td>
		<td>${emp.deptNo }</td>
		<td id="pass">${emp.passState } 
		<c:choose>
			<c:when test="${empty emp.passState || emp.passState == '지원대기자' }">
				<button id="applierBtn" onclick="location.href='./personnel/detail/${emp.empNo }'">지원서 조회</button>
			</c:when>
			<c:when test='${emp.passState == "서류합격자" }'>
				<button id="interviewBtn" onclick="location.href='./personnel/interview/${emp.empNo }'">면접보기</button>
			</c:when>
			<c:when test='${emp.passState == "면접합격자" }'>
				<button id="contractBtn" onclick="location.href='./personnel/contract/${emp.empNo }'">계약하기</button>
			</c:when>
		</c:choose>
		</td>
		<td>${emp.empDate }</td>
	</tr>
	</c:forEach>
</table>
<br/>
<button onclick="location.href='#'">메인으로</button>
</body>
</html>