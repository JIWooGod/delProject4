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
<script type="text/javascript" src="/hotelProject/js/error.js"></script>
</head>
<body>
<h2>강의등록</h2>

<div id="search">
	<form action="search" method="post" enctype="application/x-www-form-urlencoded">
		<select>
			<option value="all">통합검색</option>
			<option value="name">강사명</option>
			<option value="number">강사번호</option>
		</select>
		<input type="text" placeholder="강사명 혹은 번호를 입력하시오"><input type="submit" value="검색">
	</form>
</div>

<form:form action="uploading" method="post"
	enctype="multipart/form-data" commandName="subjectCommand">
	<table id="tableForm">
		<tr>
			<td>과목분류</td>
			<td>
			<form:select path="subjGroup">
				<form:option value="">분류 선택</form:option>
				<form:option value="필수">필수강좌</form:option>
				<form:option value="선택">선택강좌</form:option>
			</form:select>
			</td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td><form:input path="tchNo" value="" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><form:input path="subjName" placeholder="강의명을 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의 동영상</td>
			<td>
				<input type="file" id="videoUp" accept="video/*" name="subjVideo" /><br/>
				<div id="videoContent"></div>
			</td>
		</tr>
		<tr>
			<td>수강기간</td>
			<td><input type="number" name="subjDay" id="dayLong" min="7" max="30">일<div id="error"></div></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><form:textarea path="subjCnt" placeholder="강의 목차 및 간략한 소개를 입력하시오"/></td>
		</tr>
	</table>
	<input type="submit" value="등록하기">
	<input type="reset" value="초기화">
</form:form>
<button onclick="javascript:location.href='../lecture'">강좌목록</button>
</body>
</html>